class SearchPage < SitePrism::Page

    set_url "/?s=#{$teatcherName}"

    def self.checkUrl
       return expect(page).to have_current_path('/?s=#{$teatcherName}', url: true)
     end

    def self.checkTitleBar
       element :titleBar,:xpath, '//h1[text()= "#{$teatcherName}"]'
       return has_titleBar
    end

    def self.checkArticleTitle
      element :teatcherName,:xpath, '//a[text()= "#{$teatcherName}"]'
      return has_teatcherName
    end    
   
end
