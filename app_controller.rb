class AppController
  def render_template
    render('app_template.html',
           first: 'first',
           second: 'second',
           third: 'third')
  end
end
