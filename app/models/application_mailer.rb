class ApplicationMailer < ActionMailer::Base

  SITE_MAIL    = "site@museumedieval.com.br"
  SITE_MAIL_CC = "maxguzenski@gmail.com"

  def contact_email(contact)
    recipients  [SITE_MAIL]
    from        contact.email
    reply_to    contact.email
    subject     "Museu Medieval: #{contact.subject}"
    sent_on     Time.now

    body({:contact => contact})
  end

  def checkout_email(order)
    recipients  order.client.user.email
    cc          [SITE_MAIL]
    from        SITE_MAIL
    subject     "Museu Medieval: Pedido #{order.id} realizado"
    sent_on     Time.now

    body({:order => order})
  end

  def comment_email(comment)
    recipients  [SITE_MAIL]
    from        SITE_MAIL
    subject     "Museu Medieval: Novo comentário no site"
    sent_on     Time.now

    body({:comment => comment})
  end
  
end
