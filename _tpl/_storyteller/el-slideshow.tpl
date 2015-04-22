
<div class="part slideshow" name="{{ $gimme->article->number }}">










     {{ list_slideshows }}


         {{ $currentSlideshowId = $gimme->slideshow->id }}
         {{ list_slideshow_items  constraints="slideshow is $currentSlideshowId type is image" }}



              <div class="bg-image"
              data-src="http://{{ $gimme->publication->site }}{{ $gimme->slideshow_item->image->getImageUrl(1920, 1200, 'crop') }}"
              data-srcMedium="http://{{ $gimme->publication->site }}{{ $gimme->slideshow_item->image->getImageUrl(1024, 768, 'crop') }}"
              data-srcPhone="http://{{ $gimme->publication->site }}{{ $gimme->slideshow_item->image->getImageUrl(600, 736, 'crop') }}"

              {{ if $gimme->current_list->at_end }}
                data-animate="no"
              {{/if}}
                >
                <div class="caption">
                  {{$gimme->slideshow_item->caption}}

                  {{if $gimme->slideshow_item->image->photographer}}
                  <span>(photo: {{ $gimme->slideshow_item->image->photographer}})</span>
                  {{/if}}

                </div>
              </div>


         {{ /list_slideshow_items }}
     {{ /list_slideshows }}






</div>

