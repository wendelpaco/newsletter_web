title = "Queda a caminho? Traders alavancam Bitcoin aguardando alta?"
template_html = '
<div class="blog-post">
  <h2 class="blog-post-title"><a href="/news/6/Bitcoin%20morreu?">Bitcoin morreu</a></h2>
  <p class="blog-post-meta">December 14, 2013 by <a href="#">Wendel Santos</a></p>

  <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
  <ul>
    <li>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</li>
    <li>Donec id elit non mi porta gravida at eget metus.</li>
    <li>Nulla vitae elit libero, a pharetra augue.</li>
  </ul>
  <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
  <p>Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.</p>
</div>'

post = Post.new
post.title = title
post.template_html = template_html
post.user_id = 1
post.save!