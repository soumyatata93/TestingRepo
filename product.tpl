   {**
      * 2007-2019 PrestaShop
      *
      * NOTICE OF LICENSE
      *
      * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
      * that is bundled with this package in the file LICENSE.txt.
      * It is also available through the world-wide-web at this URL:
      * https://opensource.org/licenses/AFL-3.0
      * If you did not receive a copy of the license and are unable to
      * obtain it through the world-wide-web, please send an email
      * to license@prestashop.com so we can send you a copy immediately.
      *
      * DISCLAIMER
      *
      * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
      * versions in the future. If you wish to customize PrestaShop for your
      * needs please refer to http://www.prestashop.com for more information.
      *
      * @author PrestaShop SA <contact@prestashop.com>
      * @copyright 2007-2019 PrestaShop SA
      * @license https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
      * International Registered Trademark & Property of PrestaShop SA
      *}
      <style>
      .morecontent span {
         display: none;
      }
      
   </style>
   {strip}
   
      
      {extends file=$layout}
      {block name='head_seo' prepend}
         <link rel="canonical" href="{$product.canonical_url}">
      {/block}
      {block name='head' append}
         <meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
         <meta property="og:type" content="product">
         <meta property="og:url" content="{$urls.current_url}">
         <meta property="og:title" content="{$page.meta.title}">
         <meta property="og:site_name" content="{$shop.name}">
         <meta property="og:description" content="{$page.meta.description}">
         <meta property="og:image" content="{$product.cover.large.url}">
         <meta property="product:pretax_price:amount" content="{$product.price_tax_exc}">
         <meta property="product:pretax_price:currency" content="{$currency.iso_code}">
         <meta property="product:price:amount" content="{$product.price_amount}">
         <meta property="product:price:currency" content="{$currency.iso_code}">
         {if isset($product.weight) && ($product.weight != 0)}
            <meta property="product:weight:value" content="{$product.weight}">
            <meta property="product:weight:units" content="{$product.weight_unit}">
         {/if}
      {/block}
      {block name='content'}
         
         <div id="main" itemscope itemtype="https://schema.org/Product">
            <meta itemprop="url" content="{$product.url}">
            <div class="tvproduct-page-wrapper">
               <div class="tvprduct-image-info-wrapper clearfix row">
                  <div class="col-md-6 tv-product-page-image">
                     {block name='page_content_container'}
                        <div class="page-contents" id="content">
                           {block name='page_content'}
                              <div class="images-container">
                                 {block name='product_cover_thumbnails'}
                                    {block name='product_cover'}
                                       <div class="product-cover col-sm-11">
                                          <div class="tvproduct-image-slider Render">
                                             {* {block name='product_flags'}
                                                <ul class="tvproduct-flags tvproduct-online-new-wrapper">
                                                   {foreach from=$product.flags item=flag}
                                                      {if $flag.type == 'online-only' || $flag.type == 'new'}
                                                         <li class="product-flag {$flag.type}">{$flag.label}</li>
                                                      {/if}
                                                   {/foreach}
                                                </ul>
                                                <ul class="tvproduct-flags tvproduct-sale-pack-wrapper">
                                                   {foreach from=$product.flags item=flag}
                                                      {if $flag.type == 'on-sale' || $flag.type == 'pack'}
                                                         <li class="product-flag {$flag.type}">{$flag.label}</li>
                                                      {/if}
                                                   {/foreach}
                                                </ul>
                                             {/block}*}
                                             {*{foreach from=$product.images item=image}
                                                {if $image.legend eq 'Render-Cover'}
                                                   <img class="js-qv-product-cover" src="{$image.bySize.product_main_custom.url}"
                                                      alt="{$image.legend}" title="{$image.legend}" itemprop="image">
                                                   <div class="layer" data-toggle="modal" data-target="#product-modal">
                                                      <i class='material-icons'>&#xe3c2;</i>
                                                   </div>
                                                   {break}
                                                {/if}
                                             {/foreach}*}
                                             {if $product.cover}
                                                <img class="js-qv-product-cover2" src="{$product.cover.bySize.product_main_custom.url}"
                                                   alt="{$product.cover.legend}" title="{$product.cover.legend}" itemprop="image">
                                                <div class="layer" data-toggle="modal" data-target="#product-modal">
                                                   <i class='material-icons'>&#xe3c2;</i>
                                                </div>
                                             {else}
                                                <img src="{$urls.no_picture_image.bySize.main_image_prod.url}">
                                             {/if}
                                          </div>
                                          <div class="tvproduct-image-slider Customer" style="display:none;">
                                          {* {block name='product_flags'}
                                             <ul class="tvproduct-flags tvproduct-online-new-wrapper">
                                                {foreach from=$product.flags item=flag}
                                                   {if $flag.type == 'online-only' || $flag.type == 'new'}
                                                      <li class="product-flag {$flag.type}">{$flag.label}</li>
                                                   {/if}
                                                {/foreach}
                                             </ul>
                                             <ul class="tvproduct-flags tvproduct-sale-pack-wrapper">
                                                {foreach from=$product.flags item=flag}
                                                   {if $flag.type == 'on-sale' || $flag.type == 'pack'}
                                                      <li class="product-flag {$flag.type}">{$flag.label}</li>
                                                   {/if}
                                                {/foreach}
                                             </ul>
                                          {/block}*}
                                                {foreach from=$product.images item=image}
                                                   {if $image.legend eq 'Customer-Image'}
                                                      <img class="js-qv-product-cover1" src="{$image.bySize.product_main_custom.url}"
                                                         alt="{$image.legend}" title="{$image.legend}" itemprop="image">
                                                      <div class="layer" data-toggle="modal" data-target="#product-modal">
                                                         <i class='material-icons'>&#xe3c2;</i>
                                                      </div>
                                                      {break}
                                                   {/if}
                                                {/foreach}
                                       </div>
                                       <div class="tvproduct-image-slider Videos" style="display:none;">
                                          {$item="aSWi6jGalVg"}
                                          <section id="bonyoutube" class="block">
                                             <div class="box-video">
                                                <div class="video-container">
                                                   <iframe class="iframe_video" height="700" src="https://www.youtube.com/embed/aSWi6jGalVg?rel=0&amp;showinfo=0" scrolling="no" frameborder="0" allowfullscreen="allowfullscreen"></iframe>
                                                </div>
                                             </div>   
                                          </section>
                                          
                                          
                                       </div>
                                          
                                          
                                       </div>
                                       <div style="display: flex;gap:20px;padding-top:5px;color:black;font-size:16px;">
                                          <a href="" id="Our Images" onClick="showRenderImages()">Our Images</a><a href="" id="Customer Images" onClick="showCustomerImages()">Customer Images</a><a href="" id="Videos" onClick="showVideos()">Videos</a><a href="#">360°</a><a href="#">AR</a>
                                       </div>
                                       <p style="padding-top:7px; margin:0px;">Images may show optional extras or differ slightly from
                                       your product, please see specification.</p>
                                    {/block}
                                 {/block}
                                 {block name='product_images'}
                                    <div class="prod-thumbnail tvvertical-slider col-sm-3">
                                       <ul class="product-images Render-Images">
                                          {foreach from=$product.images item=image}
                                             {if strpos($image.legend,'Render')!==false}
                                                <li class="tvcmsVerticalSlider item">
                                                    {*<img class="thumb js-thumb {if $image.id_image == $product.cover.id_image} selected {/if}" data-image-medium-src="{$image.bySize.medium_default.url}" data-image-large-src="{$image.bySize.large_default.url}" src="{$image.bySize.home_default.url}" alt="{$image.legend}" title="{$image.legend}" itemprop="image"> *}
                                                   <picture>
                                                      <source srcset="{$image.bySize.medium_default.url}" media="(max-width: 768px)">
                                                      <img src="{$image.bySize.home_default.url}"
                                                         class="thumb js-thumb2 render {if $image.id_image == $product.cover.id_image} selected {/if}"
                                                         data-image-medium-src="{$image.bySize.product_main_custom.url}"
                                                         data-image-large-src="{$image.bySize.product_main_custom.url}" alt="{$image.legend}"
                                                         title="{$image.legend}" itemprop="image">
                                                   </picture>
                                                </li>
                                             {/if}
                                          {/foreach}
                                       </ul>
                                       <ul class="product-images Customer-Images" style="display:none;">
                                          {foreach from=$product.images item=image}
                                             {if strpos($image.legend,'Customer')!==false}
                                                <li class="tvcmsVerticalSlider item">
                                                    {*<img class="thumb js-thumb {if $image.id_image == $product.cover.id_image} selected {/if}" data-image-medium-src="{$image.bySize.medium_default.url}" data-image-large-src="{$image.bySize.large_default.url}" src="{$image.bySize.home_default.url}" alt="{$image.legend}" title="{$image.legend}" itemprop="image"> *}
                                                   <picture>
                                                      <source srcset="{$image.bySize.medium_default.url}" media="(max-width: 768px)">
                                                      <img src="{$image.bySize.home_default.url}"
                                                         class="thumb js-thumb1 customer"
                                                         data-image-medium-src="{$image.bySize.product_main_custom.url}"
                                                         data-image-large-src="{$image.bySize.product_main_custom.url}" alt="{$image.legend}"
                                                         title="{$image.legend}" itemprop="image">
                                                   </picture>
                                                </li>
                                             {/if}
                                          {/foreach}
                                       </ul>
                                       <ul class="product-images show-videos" style="display:none;">
                                       <li class="tvcmsVerticalSlider item">
                                          <iframe class="iframe_video" height="auto" src="https://www.youtube.com/embed/jyYvrlL1EwM?rel=0&amp;showinfo=0" scrolling="no" frameborder="0" allowfullscreen="allowfullscreen"></iframe>
                                                   {*<iframe class="iframe_video" height="700" src="https://www.youtube.com/embed/ZqJh-UXmx0g?rel=0&amp;showinfo=0" scrolling="no" frameborder="0" allowfullscreen="allowfullscreen"></iframe>
                                                   <iframe class="iframe_video" height="700" src="https://www.youtube.com/embed/onTSsx2kEwUrel=0&amp;showinfo=0" scrolling="no" frameborder="0" allowfullscreen="allowfullscreen"></iframe>
                                                   <iframe class="iframe_video" height="700" src="https://www.youtube.com/embed/sHb9rZGju5E=0&amp;showinfo=0" scrolling="no" frameborder="0" allowfullscreen="allowfullscreen"></iframe>*}
                                               
                                          </li>
                                          <li class="tvcmsVerticalSlider item">
                                             <iframe class="iframe_video" src="https://www.youtube.com/embed/ZqJh-UXmx0g?rel=0&amp;showinfo=0" scrolling="no" frameborder="0" allowfullscreen="allowfullscreen"></iframe>               
                                          </li>
                                          <li class="tvcmsVerticalSlider item">
                                             <iframe class="iframe_video" src="https://www.youtube.com/embed/sHb9rZGju5E?rel=0=0&amp;showinfo=0" scrolling="no" frameborder="0" allowfullscreen="allowfullscreen"></iframe>
                                          </li>
                                          <li class="tvcmsVerticalSlider item">
                                             <iframe class="iframe_video" src="https://www.youtube.com/embed/onTSsx2kEwU?rel=0=0&amp;showinfo=0" scrolling="no" frameborder="0" allowfullscreen="allowfullscreen"></iframe>
                                          </li>
                                          
                                       </ul>
                                       <div class="arrows js-arrows">
                                          <i class="tvvertical-slider-next material-icons arrow-up js-arrow-up">&#xE316;</i>
                                          <i class="tvvertical-slider-pre material-icons arrow-down js-arrow-down">&#xE313;</i>
                                       </div>
                                    </div>
                                 {/block}
                              </div>
                           {/block}
                        </div>
                     {/block}
                  </div>
                  <div class="col-md-6 tv-product-page-content">
                     <div class="tvproduct-title-brandimage" itemprop="itemReviewed" itemscope
                        itemtype="http://schema.org/Thing">
                        {block name='page_header_container'}
                           {block name='page_header'}
                              <h1 class="h1" itemprop="name">{block name='page_title'}{$product.name}{/block}</h1>
                              <span class="specs">Approx <b>{widget name='advancedcustomfields' hook='Metric'}</b> /
                                 {widget name='advancedcustomfields' hook='Imperial'}</span>
   
                           {/block}
                        {/block}
                        <div>
                        </div>
                        {widget name='advancedcustomfields' hook='wall_thickness'}
   
                        {assign var='display-text' value={hook h='wall_thickness'}}
                        {if $display-text}
                           <p class="impNote">(Sizes shown are approximate & full sizes are shown in the product Specification)</p>
                        {/if}
   
                        {* {if !empty({$product.wall_thickness})}
                        <p class="impNote">(Sizes shown are approximate & full sizes are shown in the product Specification)</p>
                     {/if}*}
                        {hook h='displayCustomtab'}
                        <div class="product-price-wrapper">
                           <h3 class="m-price">
                              <span>Total:
                                 <span class="main-price"><b>{$product.price}</b></span>
                              </span>
                              {if $product.has_discount}
                                 <span
                                    class="required-red red-price">{l s='Save %amount%' d='Shop.Theme.Catalog' sprintf=['%amount%' => $product.discount_to_display]}</span>
                                 <span class="was-price">| Was {$product.regular_price}†
                                 {/if}
                           </h3>
                        </div>
                        <span class="turnaround">Delivery Approx 30 - 40 Working days</span>
                        <span class="turnaround" style="display: block;">Order today with a <span
                              style="color: red;">£000.00</span> deposit!</span>
                        <div class="tvcms-product-brand-logo">
                           {if isset($manufacturer_image_url)}
                              <a href="{$product_brand_url}" class="tvproduct-brand">
                                 <img src="{$manufacturer_image_url}" alt="{$product_manufacturer->name}"
                                    title="{$product_manufacturer->name}">
                              </a>
                           {/if}
                        </div>
                        {* {hook h='displayReviewProductList' product=$product} *}
                     </div>
                     {* {hook h='displayCustomtab'} *}
                     {* Start Product Comment *}
                     {* End Product Comment *}
                     {block name='product_prices'}
                        {include file='catalog/_partials/product-prices.tpl'}
                     {/block}
                     {block name='product_availability'}
                        {if $product.show_availability && $product.availability_message}
                           <span id="product-availability">
                              {if $product.availability == 'available'}
                                 <i class="material-icons rtl-no-flip product-available">&#xE5CA;</i>
                              {elseif $product.availability == 'last_remaining_items'}
                                 <i class="material-icons product-last-items">&#xE002;</i>
                              {else}
                                 <i class="material-icons product-unavailable">&#xE14B;</i>
                              {/if}
                              {$product.availability_message}
                           </span>
                        {/if}
                     {/block}
   
   
   
                     <!--price promise-->
                     <br />
   
                     <div
                        style="float: left; cursor: pointer; width:568px; padding: 5px; display: block; background: #f2f2f2; text-align: left; line-height: 25px; position: relative; margin-bottom:10px;">
   
                        <button type="button" class="price_promise_link" data-toggle="modal" data-target="#pricePromiseModel"
                           style="border:none; cursor: pointer;  font-size: 17px;">
   
                           <b>Found similar for less?</b>
   
                           <span>
                              <span style="text-decoration: underline; padding-left:20px;">
                                 Tell us
                              </span>, we will beat it by 10%*
                           </span>
                           <img src="https://dunsterhouse.co.uk/img/layout-1300/star.png"
                              style="width: 30px; position: absolute; right: 5px; top: 5px; padding:5px;">
                        </button>
                     </div>
   
   
                     {if $accessories}
                        <div class="product-dropdown">
                           <select name="products" id="products_dropdown" class="product-size-dropdown"
                              onchange="if (this.value) window.location.href=this.value">
                              <option value="" selected>Choose your dimensions</option>
                              {foreach $accessories as $product}
                                 <option value="{$product.url}">Approx
                                    {widget name='advancedcustomfields' hook='Metric' params=['product'=>{$product.id_product}]}
                                    / {widget name='advancedcustomfields' hook='Imperial' params=['product'=>{$product.id_product}]}
                                    <small>( {$product.price} )</small></option>
   
                              {/foreach}
                           </select>
                        </div>
                     {/if}
                     {* {block name='product_description_short'}
   
                        {if $product.description_short }
                              <div id="product-description-short-{$product.id}" itemscope itemprop="description"
                                 class="tvproduct-page-decs">{$product.description_short nofilter}</div>
   
                        {/if}
   
                        {foreach from=$product.extraContent item=extra key=extraKey}
   
                           {if $extra.title === 'Features'}
                                 {$extra|var_dump}
                                 {$extra.content}
                                 {$extra.features_product}
   
                           {/if} 
   
                        {/foreach}
   
                     {/block} *}
                     {if !empty($product.specific_prices.from) && !empty($product.specific_prices.to) && $product.specific_prices.from != '0000-00-00 00:00:00' && $product.specific_prices.to != '0000-00-00 00:00:00'}
                        {include file='catalog/_partials/miniatures/product-timer.tpl' timer=$product.specific_prices.to}
                     {/if}
                     <div class="product-information tvproduct-special-desc">
                        {if $product.is_customizable && count($product.customizations.fields)}
                           {block name='product_customization'}
                              {include file="catalog/_partials/product-customization.tpl" customizations=$product.customizations}
                           {/block}
                        {/if}
                        {hook h ='displayTableBooking'}
                        <div class="product-actions">
                           {block name='product_buy'}
                              <form action="{$urls.pages.cart}" method="post" id="add-to-cart-or-refresh">
                                 <input type="hidden" name="token" value="{$static_token}">
                                 <input type="hidden" name="id_product" value="{$product.id}" id="product_page_product_id">
                                 <input type="hidden" name="id_customization" value="{$product.id_customization}"
                                    id="product_customization_id">
                                 {block name='product_variants'}
                                    {include file='catalog/_partials/product-variants.tpl'}
                                 {/block}
                                 {block name='product_pack'}
                                    {if $packItems}
                                       <div class="product-pack">
                                          <p class="h4">{l s='This pack contains' d='Shop.Theme.Catalog'}</p>
                                          {foreach from=$packItems item="product_pack"}
                                             {block name='product_miniature'}
                                                {include file='catalog/_partials/miniatures/pack-product.tpl' product=$product_pack}
                                             {/block}
                                          {/foreach}
                                       </div>
                                    {/if}
                                 {/block}
                                 {block name='product_discounts'}
                                    {include file='catalog/_partials/product-discounts.tpl'}
                                 {/block}
                                 {block name='product_add_to_cart'}
                                    {include file='catalog/_partials/product-add-to-cart.tpl'}
                                 {/block}
                                 {* {hook h='displayCustomtab'} *}
                                 {if $product.id_product_attribute > 0}
                                    <div class="megaattr-buttons">
                                       <div class="row">
                                          <div class="col-md-9 col-lg-9">
                                             <button type="button" class="btn btn dh-green text-uppercase" id="MegaConfigTrigger">
                                                <i class="material-icons shopping-cart">&#xe8b8;</i>
                                                Buy Now
                                             </button>
                                             <div class="tvproduct-share">
                                                <div class="tvproduct-wishlist-compare">
                                                   {hook h='displayWishlistProductPage' product=$product}
                                                   <span class="wishlist-text">Save for Later</span>
                                                   <i class="material-icons share "></i>
                                                   <span class="share-text">Share</span>
                                                   {*Adding sash image hook*}
                                                   {widget name='advancedcustomfields' hook='Sash' params=['product'=>{$product.id_product}]}
                                                </div>
                                                
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 {/if}
                                 {* {block name='product_additional_info'}
                           {include file='catalog/_partials/product-additional-info.tpl'}
                           {/block} *}
                                 {* Input to refresh product HTML removed, block kept for compatibility with themes *}
                                 {block name='product_refresh'}{/block}
                              </form>
                           {/block}
                        </div>
                     </div>
                     {*
                  shingle kit<div class="sash-img">
                     <img class="img-responsive" src="https://dunsterhouse.co.uk/img/highlights/free-shingle-kit.jpg" />
                  </div>*}
                     {block name='hook_display_reassurance'}
                        {hook h='displayReassurance'}
   
                     {/block}
                  </div>
               </div>
   
            </div>
   
            <div class="desc-block">
               <div class="row">
                  <div class="col-md-6">
                     {block name='product_description'}
                        <div id="product-desc" class="prod-description-main">{$product.description nofilter}</div>
            
                        <style>
                           .morecontent span {
                              display: none;
                           }                     
                        </style>
                        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
                        <script>
                        $(document).ready(function() {
                           var showChar = 350;
                           var ellipsestext = "...";
                           var moretext = "Read more";
                           var lesstext = "Read less";
                           $('.prod-description-main').each(function() {
                              var content=document.getElementById("product-desc").innerText;
                              /*alert(content.length);*/
                              
                              if(content.length > showChar) {
                                 /*alert(content.length);*/
                                 var c = content.substr(0, showChar);
                                 var h = content.substr(showChar-1, content.length - showChar);
                                 
                                 var html = c + '<span class="moreellipses" style="margin-left:10px;">' + ellipsestext+ '&nbsp;&nbsp;&nbsp;</span><span class="morecontent"><span>' + h + '</span>&nbsp;&nbsp;<a href="" class="morelink" style="margin-left:70px;">' + moretext + '</a></span>';
                                 /*alert(html);*/
                                 $(this).html(html);
                              }
   
                           });
   
                           $(".morelink").click(function(){
                              if($(this).hasClass("less")) {
                                 $(this).removeClass("less");
                                 $(this).html(moretext);
                              } else {
                                 $(this).addClass("less");
                                 $(this).html(lesstext);
                              }
                              $(this).parent().prev().toggle();
                              $(this).prev().toggle();
                              return false;
                           });
                        });
                        function showRenderImages(){
                           event.preventDefault();
                           $('.Customer').hide();
                           $('.Customer-Images').hide();
                           $('.Videos').hide();
                           $('.show-videos').hide();
                           $('.Render').show();
                           $('.Render-Images').show();
                        }
                        function showCustomerImages(){
                           event.preventDefault();
                           $('.Render').hide();
                           $('.Render-Images').hide();
                           $('.Videos').hide();
                           $('.show-videos').hide();
                           $('.Customer').show();
                           $('.Customer-Images').show();          
                        }
                        function showVideos(){
                           event.preventDefault();
                           $('.Render').hide();
                           $('.Render-Images').hide();
                           $('.Customer').hide();
                           $('.Customer-Images').hide();
                           $('.Videos').show();
                           $('.show-videos').show();
                        }
                        
                        $('body').on('mouseenter', '.tvvertical-slider .js-thumb2', function(e) {
                           
                           e.preventDefault();
                           $('.tvvertical-slider .js-thumb2').removeClass('active');
                           $(this).addClass('active');
                           var img_val = $(this).attr('data-image-large-src');
                           $('.product-cover2 img').attr('src', img_val);
                           $('.zoomContainer img').attr('src', img_val);
                           $('.zoomWindowContainer div').css("background-image", "url(" + $(this).attr('data-image-large-src') + ")");
                        });
                        $('body').on('mouseenter', '.tvvertical-slider .js-thumb1', function(e) {
                           
                           e.preventDefault();
                           $('.tvvertical-slider .js-thumb1').removeClass('active');
                           $(this).addClass('active');
                           var img_val = $(this).attr('data-image-large-src');
                           $('.product-cover1 img').attr('src', img_val);
                           $('.zoomContainer img').attr('src', img_val);
                           $('.zoomWindowContainer div').css("background-image", "url(" + $(this).attr('data-image-large-src') + ")");
                        });
                        $('.js-thumb2').on(
                           'click',
                           (event) => {
                          
                           //$('.js-modal-product-cover').attr('src',$(event.target).data('image-large-src'));
                           $('.selected').removeClass('selected');
                           $(event.target).addClass('selected');
                           $('.js-qv-product-cover2').prop('src', $(event.currentTarget).data('image-large-src'));
                           }
                        );
                        $('.js-thumb1').on(
                           'click',
                           (event) => {
                           
                           //$('.js-modal-product-cover').attr('src',$(event.target).data('image-large-src'));
                           $('.selected').removeClass('selected');
                           $(event.target).addClass('selected');
                           $('.js-qv-product-cover1').prop('src', $(event.currentTarget).data('image-large-src'));
                           }
                        );
                        </script>
                     {/block}
                  </div>
                  
                  <div class="product_specs col-md-6">
                     <div class="product-page-usp col-md-12">
                        
            
                        {block name='product_description_short'}
                           {if $product.description_short }
   
                              <div class="product-key-features-heading">Key Features</div>
   
                              <div id="product-description-short-{$product.id}" itemscope itemprop="description"
                                 class="tvproduct-page-decs" style="padding-top:15px;">{$product.description_short nofilter}
                              </div>
                           {/if}
                        {/block}
                     </div>
   
                     <div class="specs-block col-md-12">
                        {foreach from=$product.images item=image}
                           {if $image.legend eq 'specs'}
   
                              <div class="specs-img">
                                 <img class="img-responsive" src="{$image.bySize.home_default.url}" />
                              </div>
                           {/if}
                        {/foreach}
                        <ul style="list-style: none; line-height: 30px">
                           {if strlen({widget name='advancedcustomfields' hook='Specifications_LABEL_A'}) > 0}
                              <li>
                                 <span style="font-weight: 600; color: #602d91">A</span> -
                                 {widget name='advancedcustomfields' hook='Specifications_LABEL_A'}
                              </li>
                           {/if}
                           {if strlen({widget name='advancedcustomfields' hook='Specifications_LABEL_B'}) > 0}
                              <li>
                                 <span style="font-weight: 600; color: #602d91">B</span> -
                                 {widget name='advancedcustomfields' hook='Specifications_LABEL_B'}
                              </li>
                           {/if}
                           {if strlen({widget name='advancedcustomfields' hook='Specifications_LABEL_C'}) > 0}
                              <li>
                                 <span style="font-weight: 600; color: #602d91">C</span> -
                                 {widget name='advancedcustomfields' hook='Specifications_LABEL_C'}
                              </li>
                           {/if}
                           {if strlen({widget name='advancedcustomfields' hook='Specifications_LABEL_D'}) > 0}
                              <li>
                                 <span style="font-weight: 600; color: #602d91">D</span> -
                                 {widget name='advancedcustomfields' hook='Specifications_LABEL_D'}
                              </li>
                           {/if}
                        </ul>
                     </div>
   
                  </div>
               </div>
            </div>
   
            <div class="tabs tvproduct-description-tab">
               {block name='product_tabs'}
                  <ul class="nav nav-tabs" role="tablist">
                     {if $product.id_product_attribute > 0}
                        <li class="nav-item">
                           <a class="nav-link{if $product.id_product_attribute > 0} active{/if}" data-toggle="tab"
                              href="#additional_info" role="tab" aria-controls="additional_info" {if $product.id_product_attribute > 0}
                              aria-selected="true" {/if}>
                              {l s='Customisation' d='Shop.Theme.Catalog' } </a>
                        </li>
                     {/if}
                     <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#product-details" role="tab" aria-controls="product-details">
                           {l s='Specification' d='Shop.Theme.Catalog' } </a>
                     </li>
                     {* {if $product.attachments} 
               <li class="nav-item">
                  <a class="nav-link" data-toggle="tab" href="#attachments" role="tab" aria-controls="attachments">
                  {l s='Attachments' d='Shop.Theme.Catalog'}
                  </a>
               </li>
               {/if} *}
                     {foreach from=$product.extraContent item=extra key=extraKey}
                        <li class="nav-item">
                           <a class="nav-link" data-toggle="tab" href="#extra-{$extraKey}" role="tab"
                              aria-controls="extra-{$extraKey}">
                              {$extra.title}
                           </a>
                        </li>
                     {/foreach}
                     {* start product comment tab hook *}
                     {hook h='displayProductListReviewsTab'}
                     {* End product comment tab hook *}
                  </ul>
                  <div class="tab-content" id="tab-content">
                     {if $product.id_product_attribute > 0}
                        <div class="tab-pane fade in {if $product.id_product_attribute > 0} active {/if}" id="additional_info"
                           role="tabpanel">
                           {block name='product_additional_info'}
                              {include file='catalog/_partials/product-additional-info.tpl'}
                           {/block}
                        </div>
                     {/if}
                     {block name='product_details'}
                        {include file='catalog/_partials/product-details.tpl'}
                     {/block}
                     {* {block name='product_attachments'}
   
                        {if $product.attachments}
                              <div class="tab-pane fade in" id="attachments" role="tabpanel">
                                 <div class="product-attachments">
                                    <p class="h5 text-uppercase">
                           {l s='Download' d='Shop.Theme.Actions'}</p>
   
                           {foreach from=$product.attachments item=attachment}
                                       <div class="attachment">
                                          <h4><a
                                             href="
                              {url entity='attachment' params=['id_attachment' => $attachment.id_attachment]}">{$attachment.name}</a>
                                          </h4>
                                          <p>{$attachment.description}</p>
                                          <a href="
                              {url entity='attachment' params=['id_attachment' => $attachment.id_attachment]}">
   
                              {l s='Download' d='Shop.Theme.Actions'} ({$attachment.file_size_formatted})
                                          </a>
                                       </div>
   
                           {/foreach}
                                 </div>
                              </div>
   
                        {/if}
   
                     {/block} *}
                     {foreach from=$product.extraContent item=extra key=extraKey}
                        <div class="tab-pane fade in {$extra.attr.class}" id="extra-{$extraKey}" role="tabpanel"
                           {foreach $extra.attr as $key=> $val} {$key}="{$val}" {/foreach}>
                           {$extra.content nofilter}
                        </div>
                     {/foreach}
                     {* start product comment tab content hook *}
                     {hook h='displayProductListReviewsTabContent' product=$product}
                     {* End product comment tab content hook *}
                  </div>
               </div>
            {/block}
         </div>
         {block name='product_accessories'}
            {if $accessories}
               <div class="tvcmslike-product container-fluid">
                  <div class='tvlike-product-wrapper-box container'>
                     <div class="row">
                        <div class="recentlyViewed col-md-12">
                           {hook h='displayEtsVPCustom'}
                        </div>
                     </div>
                     <div class='tvcmsmain-title-wrapper'>
                        <div class="tvcms-main-title">
                           <div class='tvmain-title'>
                              <h2>{l s='You might also like' d='Shop.Theme.Catalog'}</h2>
                           </div>
                        </div>
                     </div>
                     <div class="tvlike-product">
                        <div class="products owl-theme owl-carousel tvlike-product-wrapper tvproduct-wrapper-content-box">
                           {foreach $accessories as $product}
                              {include file="catalog/_partials/miniatures/product.tpl" product=$product tv_product_type="like_product"}
                           {/foreach}
                        </div>
                     </div>
                     <div class='tvlike-pagination-wrapper tv-pagination-wrapper'>
                        <div class="tvcmslike-next-pre-btn tvcms-next-pre-btn">
                           <div class="tvcmslike-prev tvcmsprev-btn" data-parent="tvcmslike-product"><i
                                 class='material-icons'>&#xe317;</i></div>
                           <div class="tvcmslike-next tvcmsnext-btn" data-parent="tvcmslike-product"><i
                                 class='material-icons'>&#xe317;</i></div>
                        </div>
                     </div>
                  </div>
               </div>
            {/if}
         {/block}
         {block name='product_footer'}
            {hook h='displayFooterProduct' product=$product category=$category}
         {/block}
         {block name='product_images_modal'}
            {include file='catalog/_partials/product-images-modal.tpl'}
   
         {/block}
   
         {block name='page_footer_container'}
   
            {* {if Configuration::get('TVCMSCUSTOMSETTING_PRODUCT_PAGE_BOTTOM_STICKY_STATUS')}
                  <div class="tvfooter-product-sticky-bottom">
                     <div class="container">
                        <div class="tvflex-items">
                           <div class="tvproduct-image-title-price">
   
               {* {if Configuration::get('TVCMSCUSTOMSETTING_PRODUCT_PAGE_BOTTOM_STICKY_STATUS')}
                     <div class="tvfooter-product-sticky-bottom">
                        <div class="container">
                           <div class="tvflex-items">
                              <div class="tvproduct-image-title-price">
                                 {if $product.cover}
                                    <div class="product-image">
                                       <img src="{$product.cover.bySize.large_default.url}" alt="{$product.cover.legend}"
                                          title="{$product.cover.legend}" itemprop="image">
                                    </div>
                                    <div class="tvtitle-price">
                                       {block name='page_header'}
                                          <h1 class="h1" itemprop="name">{block name='page_title'}{$product.name}{/block}</h1>
                                       {/block}
                                       {block name='product_prices'}
                                          {include file='catalog/_partials/product-prices.tpl'}
                                       {/block}
                                    </div>
                                 {/if}
                              </div>
                              <div style="padding-top:1.4em;padding-left:4em;display:flex;gap:25px;">
                                 <div class="tvcart-btn-model" style="">
                                    <button class="tvall-inner-btn add-to-cart" data-button-action="" type="submit">
                                    <i class="material-icons shopping-cart">&#xe8b8;</i>
                                    <span>{l s='CONFIGURE YOUR PRODUCT' d='Shop.Theme.Actions'}</span>
                                    </button>
                                 </div>
                                 <div class="tvcart-btn-model">
                                    <button class="tvall-inner-btn add-to-cart {if !$product.add_to_cart_url} disabled {/if}"
                                    data-button-action="add-to-cart" type="submit" {if !$product.add_to_cart_url} disabled
                                    {/if}>
                                    {if !$product.add_to_cart_url} <i class='material-icons block'>&#xe14b;</i>
                                       <span>{l s='Out of stock' d='Shop.Theme.Actions'}</span>
                                    {else}
                                       <i class="material-icons shopping-cart">&#xE547;</i>
                                       <span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
                                    {/if}
                                    </button>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     {/if} *}{if $product.cover}
                                 <div class="product-image">
                                    <img src="{$product.cover.bySize.large_default.url}" alt="{$product.cover.legend}"
                                       title="{$product.cover.legend}" itemprop="image">
                                 </div>
                                 <div class="tvtitle-price">
   
                  {* {if Configuration::get('TVCMSCUSTOMSETTING_PRODUCT_PAGE_BOTTOM_STICKY_STATUS')}
                        <div class="tvfooter-product-sticky-bottom">
                           <div class="container">
                              <div class="tvflex-items">
                                 <div class="tvproduct-image-title-price">
                                    {if $product.cover}
                                       <div class="product-image">
                                          <img src="{$product.cover.bySize.large_default.url}" alt="{$product.cover.legend}"
                                             title="{$product.cover.legend}" itemprop="image">
                                       </div>
                                       <div class="tvtitle-price">
                                          {block name='page_header'}
                                             <h1 class="h1" itemprop="name">{block name='page_title'}{$product.name}{/block}</h1>
                                          {/block}
                                          {block name='product_prices'}
                                             {include file='catalog/_partials/product-prices.tpl'}
                                          {/block}
                                       </div>
                                    {/if}
                                 </div>
                                 <div style="padding-top:1.4em;padding-left:4em;display:flex;gap:25px;">
                                    <div class="tvcart-btn-model" style="">
                                       <button class="tvall-inner-btn add-to-cart" data-button-action="" type="submit">
                                       <i class="material-icons shopping-cart">&#xe8b8;</i>
                                       <span>{l s='CONFIGURE YOUR PRODUCT' d='Shop.Theme.Actions'}</span>
                                       </button>
                                    </div>
                                    <div class="tvcart-btn-model">
                                       <button class="tvall-inner-btn add-to-cart {if !$product.add_to_cart_url} disabled {/if}"
                                       data-button-action="add-to-cart" type="submit" {if !$product.add_to_cart_url} disabled
                                       {/if}>
                                       {if !$product.add_to_cart_url} <i class='material-icons block'>&#xe14b;</i>
                                          <span>{l s='Out of stock' d='Shop.Theme.Actions'}</span>
                                       {else}
                                          <i class="material-icons shopping-cart">&#xE547;</i>
                                          <span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
                                       {/if}
                                       </button>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        {/if} *}
                           {block name='page_header'}
                                             <h1 class="h1" itemprop="name">
                           {* {if Configuration::get('TVCMSCUSTOMSETTING_PRODUCT_PAGE_BOTTOM_STICKY_STATUS')}
                                 <div class="tvfooter-product-sticky-bottom">
                                    <div class="container">
                                       <div class="tvflex-items">
                                          <div class="tvproduct-image-title-price">
                                             {if $product.cover}
                                                <div class="product-image">
                                                   <img src="{$product.cover.bySize.large_default.url}" alt="{$product.cover.legend}"
                                                      title="{$product.cover.legend}" itemprop="image">
                                                </div>
                                                <div class="tvtitle-price">
                                                   {block name='page_header'}
                                                      <h1 class="h1" itemprop="name">{block name='page_title'}{$product.name}{/block}</h1>
                                                   {/block}
                                                   {block name='product_prices'}
                                                      {include file='catalog/_partials/product-prices.tpl'}
                                                   {/block}
                                                </div>
                                             {/if}
                                          </div>
                                          <div style="padding-top:1.4em;padding-left:4em;display:flex;gap:25px;">
                                             <div class="tvcart-btn-model" style="">
                                                <button class="tvall-inner-btn add-to-cart" data-button-action="" type="submit">
                                                <i class="material-icons shopping-cart">&#xe8b8;</i>
                                                <span>{l s='CONFIGURE YOUR PRODUCT' d='Shop.Theme.Actions'}</span>
                                                </button>
                                             </div>
                                             <div class="tvcart-btn-model">
                                                <button class="tvall-inner-btn add-to-cart {if !$product.add_to_cart_url} disabled {/if}"
                                                data-button-action="add-to-cart" type="submit" {if !$product.add_to_cart_url} disabled
                                                {/if}>
                                                {if !$product.add_to_cart_url} <i class='material-icons block'>&#xe14b;</i>
                                                   <span>{l s='Out of stock' d='Shop.Theme.Actions'}</span>
                                                {else}
                                                   <i class="material-icons shopping-cart">&#xE547;</i>
                                                   <span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
                                                {/if}
                                                </button>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                                 {/if} *}
                                    {block name='page_title'}{$product.name}
                                    {* {if Configuration::get('TVCMSCUSTOMSETTING_PRODUCT_PAGE_BOTTOM_STICKY_STATUS')}
                                          <div class="tvfooter-product-sticky-bottom">
                                             <div class="container">
                                                <div class="tvflex-items">
                                                   <div class="tvproduct-image-title-price">
                                                      {if $product.cover}
                                                         <div class="product-image">
                                                            <img src="{$product.cover.bySize.large_default.url}" alt="{$product.cover.legend}"
                                                               title="{$product.cover.legend}" itemprop="image">
                                                         </div>
                                                         <div class="tvtitle-price">
                                                            {block name='page_header'}
                                                               <h1 class="h1" itemprop="name">{block name='page_title'}{$product.name}{/block}</h1>
                                                            {/block}
                                                            {block name='product_prices'}
                                                               {include file='catalog/_partials/product-prices.tpl'}
                                                            {/block}
                                                         </div>
                                                      {/if}
                                                   </div>
                                                   <div style="padding-top:1.4em;padding-left:4em;display:flex;gap:25px;">
                                                      <div class="tvcart-btn-model" style="">
                                                         <button class="tvall-inner-btn add-to-cart" data-button-action="" type="submit">
                                                         <i class="material-icons shopping-cart">&#xe8b8;</i>
                                                         <span>{l s='CONFIGURE YOUR PRODUCT' d='Shop.Theme.Actions'}</span>
                                                         </button>
                                                      </div>
                                                      <div class="tvcart-btn-model">
                                                         <button class="tvall-inner-btn add-to-cart {if !$product.add_to_cart_url} disabled {/if}"
                                                         data-button-action="add-to-cart" type="submit" {if !$product.add_to_cart_url} disabled
                                                         {/if}>
                                                         {if !$product.add_to_cart_url} <i class='material-icons block'>&#xe14b;</i>
                                                            <span>{l s='Out of stock' d='Shop.Theme.Actions'}</span>
                                                         {else}
                                                            <i class="material-icons shopping-cart">&#xE547;</i>
                                                            <span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
                                                         {/if}
                                                         </button>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                       {/if} *}
                                    {/block}</h1>
   
                                 {* {if Configuration::get('TVCMSCUSTOMSETTING_PRODUCT_PAGE_BOTTOM_STICKY_STATUS')}
                                       <div class="tvfooter-product-sticky-bottom">
                                          <div class="container">
                                             <div class="tvflex-items">
                                                <div class="tvproduct-image-title-price">
                                                   {if $product.cover}
                                                      <div class="product-image">
                                                         <img src="{$product.cover.bySize.large_default.url}" alt="{$product.cover.legend}"
                                                            title="{$product.cover.legend}" itemprop="image">
                                                      </div>
                                                      <div class="tvtitle-price">
                                                         {block name='page_header'}
                                                            <h1 class="h1" itemprop="name">{block name='page_title'}{$product.name}{/block}</h1>
                                                         {/block}
                                                         {block name='product_prices'}
                                                            {include file='catalog/_partials/product-prices.tpl'}
                                                         {/block}
                                                      </div>
                                                   {/if}
                                                </div>
                                                <div style="padding-top:1.4em;padding-left:4em;display:flex;gap:25px;">
                                                   <div class="tvcart-btn-model" style="">
                                                      <button class="tvall-inner-btn add-to-cart" data-button-action="" type="submit">
                                                      <i class="material-icons shopping-cart">&#xe8b8;</i>
                                                      <span>{l s='CONFIGURE YOUR PRODUCT' d='Shop.Theme.Actions'}</span>
                                                      </button>
                                                   </div>
                                                   <div class="tvcart-btn-model">
                                                      <button class="tvall-inner-btn add-to-cart {if !$product.add_to_cart_url} disabled {/if}"
                                                      data-button-action="add-to-cart" type="submit" {if !$product.add_to_cart_url} disabled
                                                      {/if}>
                                                      {if !$product.add_to_cart_url} <i class='material-icons block'>&#xe14b;</i>
                                                         <span>{l s='Out of stock' d='Shop.Theme.Actions'}</span>
                                                      {else}
                                                         <i class="material-icons shopping-cart">&#xE547;</i>
                                                         <span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
                                                      {/if}
                                                      </button>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    {/if} *}
                                 {/block}
   
                              {* {if Configuration::get('TVCMSCUSTOMSETTING_PRODUCT_PAGE_BOTTOM_STICKY_STATUS')}
                                    <div class="tvfooter-product-sticky-bottom">
                                       <div class="container">
                                          <div class="tvflex-items">
                                             <div class="tvproduct-image-title-price">
                                                {if $product.cover}
                                                   <div class="product-image">
                                                      <img src="{$product.cover.bySize.large_default.url}" alt="{$product.cover.legend}"
                                                         title="{$product.cover.legend}" itemprop="image">
                                                   </div>
                                                   <div class="tvtitle-price">
                                                      {block name='page_header'}
                                                         <h1 class="h1" itemprop="name">{block name='page_title'}{$product.name}{/block}</h1>
                                                      {/block}
                                                      {block name='product_prices'}
                                                         {include file='catalog/_partials/product-prices.tpl'}
                                                      {/block}
                                                   </div>
                                                {/if}
                                             </div>
                                             <div style="padding-top:1.4em;padding-left:4em;display:flex;gap:25px;">
                                                <div class="tvcart-btn-model" style="">
                                                   <button class="tvall-inner-btn add-to-cart" data-button-action="" type="submit">
                                                   <i class="material-icons shopping-cart">&#xe8b8;</i>
                                                   <span>{l s='CONFIGURE YOUR PRODUCT' d='Shop.Theme.Actions'}</span>
                                                   </button>
                                                </div>
                                                <div class="tvcart-btn-model">
                                                   <button class="tvall-inner-btn add-to-cart {if !$product.add_to_cart_url} disabled {/if}"
                                                   data-button-action="add-to-cart" type="submit" {if !$product.add_to_cart_url} disabled
                                                   {/if}>
                                                   {if !$product.add_to_cart_url} <i class='material-icons block'>&#xe14b;</i>
                                                      <span>{l s='Out of stock' d='Shop.Theme.Actions'}</span>
                                                   {else}
                                                      <i class="material-icons shopping-cart">&#xE547;</i>
                                                      <span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
                                                   {/if}
                                                   </button>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                    {/if} *}
                                       {block name='product_prices'}
   
                                       {* {if Configuration::get('TVCMSCUSTOMSETTING_PRODUCT_PAGE_BOTTOM_STICKY_STATUS')}
                                             <div class="tvfooter-product-sticky-bottom">
                                                <div class="container">
                                                   <div class="tvflex-items">
                                                      <div class="tvproduct-image-title-price">
                                                         {if $product.cover}
                                                            <div class="product-image">
                                                               <img src="{$product.cover.bySize.large_default.url}" alt="{$product.cover.legend}"
                                                                  title="{$product.cover.legend}" itemprop="image">
                                                            </div>
                                                            <div class="tvtitle-price">
                                                               {block name='page_header'}
                                                                  <h1 class="h1" itemprop="name">{block name='page_title'}{$product.name}{/block}</h1>
                                                               {/block}
                                                               {block name='product_prices'}
                                                                  {include file='catalog/_partials/product-prices.tpl'}
                                                               {/block}
                                                            </div>
                                                         {/if}
                                                      </div>
                                                      <div style="padding-top:1.4em;padding-left:4em;display:flex;gap:25px;">
                                                         <div class="tvcart-btn-model" style="">
                                                            <button class="tvall-inner-btn add-to-cart" data-button-action="" type="submit">
                                                            <i class="material-icons shopping-cart">&#xe8b8;</i>
                                                            <span>{l s='CONFIGURE YOUR PRODUCT' d='Shop.Theme.Actions'}</span>
                                                            </button>
                                                         </div>
                                                         <div class="tvcart-btn-model">
                                                            <button class="tvall-inner-btn add-to-cart {if !$product.add_to_cart_url} disabled {/if}"
                                                            data-button-action="add-to-cart" type="submit" {if !$product.add_to_cart_url} disabled
                                                            {/if}>
                                                            {if !$product.add_to_cart_url} <i class='material-icons block'>&#xe14b;</i>
                                                               <span>{l s='Out of stock' d='Shop.Theme.Actions'}</span>
                                                            {else}
                                                               <i class="material-icons shopping-cart">&#xE547;</i>
                                                               <span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
                                                            {/if}
                                                            </button>
                                                         </div>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          {/if} *}{include file='catalog/_partials/product-prices.tpl'}
   
                                       {* {if Configuration::get('TVCMSCUSTOMSETTING_PRODUCT_PAGE_BOTTOM_STICKY_STATUS')}
                                             <div class="tvfooter-product-sticky-bottom">
                                                <div class="container">
                                                   <div class="tvflex-items">
                                                      <div class="tvproduct-image-title-price">
                                                         {if $product.cover}
                                                            <div class="product-image">
                                                               <img src="{$product.cover.bySize.large_default.url}" alt="{$product.cover.legend}"
                                                                  title="{$product.cover.legend}" itemprop="image">
                                                            </div>
                                                            <div class="tvtitle-price">
                                                               {block name='page_header'}
                                                                  <h1 class="h1" itemprop="name">{block name='page_title'}{$product.name}{/block}</h1>
                                                               {/block}
                                                               {block name='product_prices'}
                                                                  {include file='catalog/_partials/product-prices.tpl'}
                                                               {/block}
                                                            </div>
                                                         {/if}
                                                      </div>
                                                      <div style="padding-top:1.4em;padding-left:4em;display:flex;gap:25px;">
                                                         <div class="tvcart-btn-model" style="">
                                                            <button class="tvall-inner-btn add-to-cart" data-button-action="" type="submit">
                                                            <i class="material-icons shopping-cart">&#xe8b8;</i>
                                                            <span>{l s='CONFIGURE YOUR PRODUCT' d='Shop.Theme.Actions'}</span>
                                                            </button>
                                                         </div>
                                                         <div class="tvcart-btn-model">
                                                            <button class="tvall-inner-btn add-to-cart {if !$product.add_to_cart_url} disabled {/if}"
                                                            data-button-action="add-to-cart" type="submit" {if !$product.add_to_cart_url} disabled
                                                            {/if}>
                                                            {if !$product.add_to_cart_url} <i class='material-icons block'>&#xe14b;</i>
                                                               <span>{l s='Out of stock' d='Shop.Theme.Actions'}</span>
                                                            {else}
                                                               <i class="material-icons shopping-cart">&#xE547;</i>
                                                               <span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
                                                            {/if}
                                                            </button>
                                                         </div>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          {/if} *}
                                       {/block}
                                                   </div>
   
                                    {* {if Configuration::get('TVCMSCUSTOMSETTING_PRODUCT_PAGE_BOTTOM_STICKY_STATUS')}
                                          <div class="tvfooter-product-sticky-bottom">
                                             <div class="container">
                                                <div class="tvflex-items">
                                                   <div class="tvproduct-image-title-price">
                                                      {if $product.cover}
                                                         <div class="product-image">
                                                            <img src="{$product.cover.bySize.large_default.url}" alt="{$product.cover.legend}"
                                                               title="{$product.cover.legend}" itemprop="image">
                                                         </div>
                                                         <div class="tvtitle-price">
                                                            {block name='page_header'}
                                                               <h1 class="h1" itemprop="name">{block name='page_title'}{$product.name}{/block}</h1>
                                                            {/block}
                                                            {block name='product_prices'}
                                                               {include file='catalog/_partials/product-prices.tpl'}
                                                            {/block}
                                                         </div>
                                                      {/if}
                                                   </div>
                                                   <div style="padding-top:1.4em;padding-left:4em;display:flex;gap:25px;">
                                                      <div class="tvcart-btn-model" style="">
                                                         <button class="tvall-inner-btn add-to-cart" data-button-action="" type="submit">
                                                         <i class="material-icons shopping-cart">&#xe8b8;</i>
                                                         <span>{l s='CONFIGURE YOUR PRODUCT' d='Shop.Theme.Actions'}</span>
                                                         </button>
                                                      </div>
                                                      <div class="tvcart-btn-model">
                                                         <button class="tvall-inner-btn add-to-cart {if !$product.add_to_cart_url} disabled {/if}"
                                                         data-button-action="add-to-cart" type="submit" {if !$product.add_to_cart_url} disabled
                                                         {/if}>
                                                         {if !$product.add_to_cart_url} <i class='material-icons block'>&#xe14b;</i>
                                                            <span>{l s='Out of stock' d='Shop.Theme.Actions'}</span>
                                                         {else}
                                                            <i class="material-icons shopping-cart">&#xE547;</i>
                                                            <span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
                                                         {/if}
                                                         </button>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                       {/if} *}
                                    {/if}
                                    {if Configuration::get('TVCMSCUSTOMSETTING_PRODUCT_PAGE_BOTTOM_STICKY_STATUS')}
                                       <div class="tvfooter-product-sticky-bottom">
                                          <div class="container">
                                             <div class="tvflex-items">
                                                <div class="tvproduct-image-title-price">
                                                   {if $product.cover}
                                                      <div class="product-image">
                                                         <img src="{$product.cover.bySize.large_default.url}" alt="{$product.cover.legend}"
                                                            title="{$product.cover.legend}" itemprop="image">
                                                      </div>
                                                      <div class="tvtitle-price">
                                                         {block name='page_header'}
                                                            <h1 class="h1" itemprop="name">{block name='page_title'}{$product.name}{/block}</h1>
                                                         {/block}
                                                         {block name='product_prices'}
                                                            {include file='catalog/_partials/product-prices.tpl'}
                                                         {/block}
                                                      </div>
                                                   {/if}
                                                </div>
                                    
                                             </div>
                                             <div style="padding-top:1.4em;padding-left:4em;display:flex;gap:25px;">
                                                <div class="tvcart-btn-model" style="">
                                                   <button class="tvall-inner-btn add-to-cart" data-button-action="" type="submit">
                                                   <i class="material-icons shopping-cart">&#xe8b8;</i>
                                                   <span>{l s='CONFIGURE YOUR PRODUCT' d='Shop.Theme.Actions'}</span>
                                                   </button>
                                                </div>
                                                <div class="tvcart-btn-model">
                                                   <button class="tvall-inner-btn add-to-cart{if !$product.add_to_cart_url} disabled {/if}"
                                                      data-button-action="add-to-cart" type="submit" {if !$product.add_to_cart_url} disabled
                                                      {/if}>
                                                      {if !$product.add_to_cart_url} <i class='material-icons block'>&#xe14b;</i>
                                                         <span>{l s='Out of stock' d='Shop.Theme.Actions'}</span>
                                                      {else}
                                                         <i class="material-icons shopping-cart">&#xE547;</i>
                                                         <span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
                                                      {/if}
                                                      </button>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    {/if} 
                                 {* {if Configuration::get('TVCMSCUSTOMSETTING_PRODUCT_PAGE_BOTTOM_STICKY_STATUS')}
                                       <div class="tvfooter-product-sticky-bottom">
                                          <div class="container">
                                             <div class="tvflex-items">
                                                <div class="tvproduct-image-title-price">
                                                   {if $product.cover}
                                                      <div class="product-image">
                                                         <img src="{$product.cover.bySize.large_default.url}" alt="{$product.cover.legend}"
                                                            title="{$product.cover.legend}" itemprop="image">
                                                      </div>
                                                      <div class="tvtitle-price">
                                                         {block name='page_header'}
                                                            <h1 class="h1" itemprop="name">{block name='page_title'}{$product.name}{/block}</h1>
                                                         {/block}
                                                         {block name='product_prices'}
                                                            {include file='catalog/_partials/product-prices.tpl'}
                                                         {/block}
                                                      </div>
                                                   {/if}
                                                </div>
                                                <div style="padding-top:1.4em;padding-left:4em;display:flex;gap:25px;">
                                                   <div class="tvcart-btn-model" style="">
                                                      <button class="tvall-inner-btn add-to-cart" data-button-action="" type="submit">
                                                      <i class="material-icons shopping-cart">&#xe8b8;</i>
                                                      <span>{l s='CONFIGURE YOUR PRODUCT' d='Shop.Theme.Actions'}</span>
                                                      </button>
                                                   </div>
                                                   <div class="tvcart-btn-model">
                                                      <button class="tvall-inner-btn add-to-cart {if !$product.add_to_cart_url} disabled {/if}"
                                                      data-button-action="add-to-cart" type="submit" {if !$product.add_to_cart_url} disabled
                                                      {/if}>
                                                      {if !$product.add_to_cart_url} <i class='material-icons block'>&#xe14b;</i>
                                                         <span>{l s='Out of stock' d='Shop.Theme.Actions'}</span>
                                                      {else}
                                                         <i class="material-icons shopping-cart">&#xE547;</i>
                                                         <span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
                                                      {/if}
                                                      </button>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    {/if} *} 
                                 {* {if Configuration::get('TVCMSCUSTOMSETTING_PRODUCT_PAGE_BOTTOM_STICKY_STATUS')}
                                       <div class="tvfooter-product-sticky-bottom">
                                          <div class="container">
                                             <div class="tvflex-items">
                                                <div class="tvproduct-image-title-price">
                                                   {if $product.cover}
                                                      <div class="product-image">
                                                         <img src="{$product.cover.bySize.large_default.url}" alt="{$product.cover.legend}"
                                                            title="{$product.cover.legend}" itemprop="image">
                                                      </div>
                                                      <div class="tvtitle-price">
                                                         {block name='page_header'}
                                                            <h1 class="h1" itemprop="name">{block name='page_title'}{$product.name}{/block}</h1>
                                                         {/block}
                                                         {block name='product_prices'}
                                                            {include file='catalog/_partials/product-prices.tpl'}
                                                         {/block}
                                                      </div>
                                                   {/if}
                                                </div>
                                                <div style="padding-top:1.4em;padding-left:4em;display:flex;gap:25px;">
                                                   <div class="tvcart-btn-model" style="">
                                                      <button class="tvall-inner-btn add-to-cart" data-button-action="" type="submit">
                                                      <i class="material-icons shopping-cart">&#xe8b8;</i>
                                                      <span>{l s='CONFIGURE YOUR PRODUCT' d='Shop.Theme.Actions'}</span>
                                                      </button>
                                                   </div>
                                                   <div class="tvcart-btn-model">
                                                      <button class="tvall-inner-btn add-to-cart {if !$product.add_to_cart_url} disabled {/if}"
                                                      data-button-action="add-to-cart" type="submit" {if !$product.add_to_cart_url} disabled
                                                      {/if}>
                                                      {if !$product.add_to_cart_url} <i class='material-icons block'>&#xe14b;</i>
                                                         <span>{l s='Out of stock' d='Shop.Theme.Actions'}</span>
                                                      {else}
                                                         <i class="material-icons shopping-cart">&#xE547;</i>
                                                         <span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
                                                      {/if}
                                                      </button>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                       {/if} *}{if !$product.add_to_cart_url} disabled 
                                    {* {if Configuration::get('TVCMSCUSTOMSETTING_PRODUCT_PAGE_BOTTOM_STICKY_STATUS')}
                                          <div class="tvfooter-product-sticky-bottom">
                                             <div class="container">
                                                <div class="tvflex-items">
                                                   <div class="tvproduct-image-title-price">
                                                      {if $product.cover}
                                                         <div class="product-image">
                                                            <img src="{$product.cover.bySize.large_default.url}" alt="{$product.cover.legend}"
                                                               title="{$product.cover.legend}" itemprop="image">
                                                         </div>
                                                         <div class="tvtitle-price">
                                                            {block name='page_header'}
                                                               <h1 class="h1" itemprop="name">{block name='page_title'}{$product.name}{/block}</h1>
                                                            {/block}
                                                            {block name='product_prices'}
                                                               {include file='catalog/_partials/product-prices.tpl'}
                                                            {/block}
                                                         </div>
                                                      {/if}
                                                   </div>
                                                   <div style="padding-top:1.4em;padding-left:4em;display:flex;gap:25px;">
                                                      <div class="tvcart-btn-model" style="">
                                                         <button class="tvall-inner-btn add-to-cart" data-button-action="" type="submit">
                                                         <i class="material-icons shopping-cart">&#xe8b8;</i>
                                                         <span>{l s='CONFIGURE YOUR PRODUCT' d='Shop.Theme.Actions'}</span>
                                                         </button>
                                                      </div>
                                                      <div class="tvcart-btn-model">
                                                         <button class="tvall-inner-btn add-to-cart {if !$product.add_to_cart_url} disabled {/if}"
                                                         data-button-action="add-to-cart" type="submit" {if !$product.add_to_cart_url} disabled
                                                         {/if}>
                                                         {if !$product.add_to_cart_url} <i class='material-icons block'>&#xe14b;</i>
                                                            <span>{l s='Out of stock' d='Shop.Theme.Actions'}</span>
                                                         {else}
                                                            <i class="material-icons shopping-cart">&#xE547;</i>
                                                            <span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
                                                         {/if}
                                                         </button>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                       {/if} *}
                                    
                                 {* {if Configuration::get('TVCMSCUSTOMSETTING_PRODUCT_PAGE_BOTTOM_STICKY_STATUS')}
                                       <div class="tvfooter-product-sticky-bottom">
                                          <div class="container">
                                             <div class="tvflex-items">
                                                <div class="tvproduct-image-title-price">
                                                   {if $product.cover}
                                                      <div class="product-image">
                                                         <img src="{$product.cover.bySize.large_default.url}" alt="{$product.cover.legend}"
                                                            title="{$product.cover.legend}" itemprop="image">
                                                      </div>
                                                      <div class="tvtitle-price">
                                                         {block name='page_header'}
                                                            <h1 class="h1" itemprop="name">{block name='page_title'}{$product.name}{/block}</h1>
                                                         {/block}
                                                         {block name='product_prices'}
                                                            {include file='catalog/_partials/product-prices.tpl'}
                                                         {/block}
                                                      </div>
                                                   {/if}
                                                </div>
                                                <div style="padding-top:1.4em;padding-left:4em;display:flex;gap:25px;">
                                                   <div class="tvcart-btn-model" style="">
                                                      <button class="tvall-inner-btn add-to-cart" data-button-action="" type="submit">
                                                      <i class="material-icons shopping-cart">&#xe8b8;</i>
                                                      <span>{l s='CONFIGURE YOUR PRODUCT' d='Shop.Theme.Actions'}</span>
                                                      </button>
                                                   </div>
                                                   <div class="tvcart-btn-model">
                                                      <button class="tvall-inner-btn add-to-cart {if !$product.add_to_cart_url} disabled {/if}"
                                                      data-button-action="add-to-cart" type="submit" {if !$product.add_to_cart_url} disabled
                                                      {/if}>
                                                      {if !$product.add_to_cart_url} <i class='material-icons block'>&#xe14b;</i>
                                                         <span>{l s='Out of stock' d='Shop.Theme.Actions'}</span>
                                                      {else}
                                                         <i class="material-icons shopping-cart">&#xE547;</i>
                                                         <span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
                                                      {/if}
                                                      </button>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                       {/if} *}{if !$product.add_to_cart_url} disabled
   
                                    {* {if Configuration::get('TVCMSCUSTOMSETTING_PRODUCT_PAGE_BOTTOM_STICKY_STATUS')}
                                          <div class="tvfooter-product-sticky-bottom">
                                             <div class="container">
                                                <div class="tvflex-items">
                                                   <div class="tvproduct-image-title-price">
                                                      {if $product.cover}
                                                         <div class="product-image">
                                                            <img src="{$product.cover.bySize.large_default.url}" alt="{$product.cover.legend}"
                                                               title="{$product.cover.legend}" itemprop="image">
                                                         </div>
                                                         <div class="tvtitle-price">
                                                            {block name='page_header'}
                                                               <h1 class="h1" itemprop="name">{block name='page_title'}{$product.name}{/block}</h1>
                                                            {/block}
                                                            {block name='product_prices'}
                                                               {include file='catalog/_partials/product-prices.tpl'}
                                                            {/block}
                                                         </div>
                                                      {/if}
                                                   </div>
                                                   <div style="padding-top:1.4em;padding-left:4em;display:flex;gap:25px;">
                                                      <div class="tvcart-btn-model" style="">
                                                         <button class="tvall-inner-btn add-to-cart" data-button-action="" type="submit">
                                                         <i class="material-icons shopping-cart">&#xe8b8;</i>
                                                         <span>{l s='CONFIGURE YOUR PRODUCT' d='Shop.Theme.Actions'}</span>
                                                         </button>
                                                      </div>
                                                      <div class="tvcart-btn-model">
                                                         <button class="tvall-inner-btn add-to-cart {if !$product.add_to_cart_url} disabled {/if}"
                                                         data-button-action="add-to-cart" type="submit" {if !$product.add_to_cart_url} disabled
                                                         {/if}>
                                                         {if !$product.add_to_cart_url} <i class='material-icons block'>&#xe14b;</i>
                                                            <span>{l s='Out of stock' d='Shop.Theme.Actions'}</span>
                                                         {else}
                                                            <i class="material-icons shopping-cart">&#xE547;</i>
                                                            <span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
                                                         {/if}
                                                         </button>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                       {/if} *}
                                    {/if}>
   
                                 {* {if Configuration::get('TVCMSCUSTOMSETTING_PRODUCT_PAGE_BOTTOM_STICKY_STATUS')}
                                       <div class="tvfooter-product-sticky-bottom">
                                          <div class="container">
                                             <div class="tvflex-items">
                                                <div class="tvproduct-image-title-price">
                                                   {if $product.cover}
                                                      <div class="product-image">
                                                         <img src="{$product.cover.bySize.large_default.url}" alt="{$product.cover.legend}"
                                                            title="{$product.cover.legend}" itemprop="image">
                                                      </div>
                                                      <div class="tvtitle-price">
                                                         {block name='page_header'}
                                                            <h1 class="h1" itemprop="name">{block name='page_title'}{$product.name}{/block}</h1>
                                                         {/block}
                                                         {block name='product_prices'}
                                                            {include file='catalog/_partials/product-prices.tpl'}
                                                         {/block}
                                                      </div>
                                                   {/if}
                                                </div>
                                                <div style="padding-top:1.4em;padding-left:4em;display:flex;gap:25px;">
                                                   <div class="tvcart-btn-model" style="">
                                                      <button class="tvall-inner-btn add-to-cart" data-button-action="" type="submit">
                                                      <i class="material-icons shopping-cart">&#xe8b8;</i>
                                                      <span>{l s='CONFIGURE YOUR PRODUCT' d='Shop.Theme.Actions'}</span>
                                                      </button>
                                                   </div>
                                                   <div class="tvcart-btn-model">
                                                      <button class="tvall-inner-btn add-to-cart {if !$product.add_to_cart_url} disabled {/if}"
                                                      data-button-action="add-to-cart" type="submit" {if !$product.add_to_cart_url} disabled
                                                      {/if}>
                                                      {if !$product.add_to_cart_url} <i class='material-icons block'>&#xe14b;</i>
                                                         <span>{l s='Out of stock' d='Shop.Theme.Actions'}</span>
                                                      {else}
                                                         <i class="material-icons shopping-cart">&#xE547;</i>
                                                         <span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
                                                      {/if}
                                                      </button>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                       {/if} *}{if !$product.add_to_cart_url} <i class='material-icons block'>&#xe14b;</i>
                                                      <span>
                                    {* {if Configuration::get('TVCMSCUSTOMSETTING_PRODUCT_PAGE_BOTTOM_STICKY_STATUS')}
                                          <div class="tvfooter-product-sticky-bottom">
                                             <div class="container">
                                                <div class="tvflex-items">
                                                   <div class="tvproduct-image-title-price">
                                                      {if $product.cover}
                                                         <div class="product-image">
                                                            <img src="{$product.cover.bySize.large_default.url}" alt="{$product.cover.legend}"
                                                               title="{$product.cover.legend}" itemprop="image">
                                                         </div>
                                                         <div class="tvtitle-price">
                                                            {block name='page_header'}
                                                               <h1 class="h1" itemprop="name">{block name='page_title'}{$product.name}{/block}</h1>
                                                            {/block}
                                                            {block name='product_prices'}
                                                               {include file='catalog/_partials/product-prices.tpl'}
                                                            {/block}
                                                         </div>
                                                      {/if}
                                                   </div>
                                                   <div style="padding-top:1.4em;padding-left:4em;display:flex;gap:25px;">
                                                      <div class="tvcart-btn-model" style="">
                                                         <button class="tvall-inner-btn add-to-cart" data-button-action="" type="submit">
                                                         <i class="material-icons shopping-cart">&#xe8b8;</i>
                                                         <span>{l s='CONFIGURE YOUR PRODUCT' d='Shop.Theme.Actions'}</span>
                                                         </button>
                                                      </div>
                                                      <div class="tvcart-btn-model">
                                                         <button class="tvall-inner-btn add-to-cart {if !$product.add_to_cart_url} disabled {/if}"
                                                         data-button-action="add-to-cart" type="submit" {if !$product.add_to_cart_url} disabled
                                                         {/if}>
                                                         {if !$product.add_to_cart_url} <i class='material-icons block'>&#xe14b;</i>
                                                            <span>{l s='Out of stock' d='Shop.Theme.Actions'}</span>
                                                         {else}
                                                            <i class="material-icons shopping-cart">&#xE547;</i>
                                                            <span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
                                                         {/if}
                                                         </button>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                       {/if} *}{l s='Out of stock' d='Shop.Theme.Actions'}</span>
   
                                    {* {if Configuration::get('TVCMSCUSTOMSETTING_PRODUCT_PAGE_BOTTOM_STICKY_STATUS')}
                                          <div class="tvfooter-product-sticky-bottom">
                                             <div class="container">
                                                <div class="tvflex-items">
                                                   <div class="tvproduct-image-title-price">
                                                      {if $product.cover}
                                                         <div class="product-image">
                                                            <img src="{$product.cover.bySize.large_default.url}" alt="{$product.cover.legend}"
                                                               title="{$product.cover.legend}" itemprop="image">
                                                         </div>
                                                         <div class="tvtitle-price">
                                                            {block name='page_header'}
                                                               <h1 class="h1" itemprop="name">{block name='page_title'}{$product.name}{/block}</h1>
                                                            {/block}
                                                            {block name='product_prices'}
                                                               {include file='catalog/_partials/product-prices.tpl'}
                                                            {/block}
                                                         </div>
                                                      {/if}
                                                   </div>
                                                   <div style="padding-top:1.4em;padding-left:4em;display:flex;gap:25px;">
                                                      <div class="tvcart-btn-model" style="">
                                                         <button class="tvall-inner-btn add-to-cart" data-button-action="" type="submit">
                                                         <i class="material-icons shopping-cart">&#xe8b8;</i>
                                                         <span>{l s='CONFIGURE YOUR PRODUCT' d='Shop.Theme.Actions'}</span>
                                                         </button>
                                                      </div>
                                                      <div class="tvcart-btn-model">
                                                         <button class="tvall-inner-btn add-to-cart {if !$product.add_to_cart_url} disabled {/if}"
                                                         data-button-action="add-to-cart" type="submit" {if !$product.add_to_cart_url} disabled
                                                         {/if}>
                                                         {if !$product.add_to_cart_url} <i class='material-icons block'>&#xe14b;</i>
                                                            <span>{l s='Out of stock' d='Shop.Theme.Actions'}</span>
                                                         {else}
                                                            <i class="material-icons shopping-cart">&#xE547;</i>
                                                            <span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
                                                         {/if}
                                                         </button>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                       {/if} *}
                                       {else}
                                                         <i class="material-icons shopping-cart">&#xE547;</i>
                                                         <span>
                                       {* {if Configuration::get('TVCMSCUSTOMSETTING_PRODUCT_PAGE_BOTTOM_STICKY_STATUS')}
                                             <div class="tvfooter-product-sticky-bottom">
                                                <div class="container">
                                                   <div class="tvflex-items">
                                                      <div class="tvproduct-image-title-price">
                                                         {if $product.cover}
                                                            <div class="product-image">
                                                               <img src="{$product.cover.bySize.large_default.url}" alt="{$product.cover.legend}"
                                                                  title="{$product.cover.legend}" itemprop="image">
                                                            </div>
                                                            <div class="tvtitle-price">
                                                               {block name='page_header'}
                                                                  <h1 class="h1" itemprop="name">{block name='page_title'}{$product.name}{/block}</h1>
                                                               {/block}
                                                               {block name='product_prices'}
                                                                  {include file='catalog/_partials/product-prices.tpl'}
                                                               {/block}
                                                            </div>
                                                         {/if}
                                                      </div>
                                                      <div style="padding-top:1.4em;padding-left:4em;display:flex;gap:25px;">
                                                         <div class="tvcart-btn-model" style="">
                                                            <button class="tvall-inner-btn add-to-cart" data-button-action="" type="submit">
                                                            <i class="material-icons shopping-cart">&#xe8b8;</i>
                                                            <span>{l s='CONFIGURE YOUR PRODUCT' d='Shop.Theme.Actions'}</span>
                                                            </button>
                                                         </div>
                                                         <div class="tvcart-btn-model">
                                                            <button class="tvall-inner-btn add-to-cart {if !$product.add_to_cart_url} disabled {/if}"
                                                            data-button-action="add-to-cart" type="submit" {if !$product.add_to_cart_url} disabled
                                                            {/if}>
                                                            {if !$product.add_to_cart_url} <i class='material-icons block'>&#xe14b;</i>
                                                               <span>{l s='Out of stock' d='Shop.Theme.Actions'}</span>
                                                            {else}
                                                               <i class="material-icons shopping-cart">&#xE547;</i>
                                                               <span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
                                                            {/if}
                                                            </button>
                                                         </div>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          {/if} *}{l s='Add to cart' d='Shop.Theme.Actions'}</span>
   
                                       {* {if Configuration::get('TVCMSCUSTOMSETTING_PRODUCT_PAGE_BOTTOM_STICKY_STATUS')}
                                             <div class="tvfooter-product-sticky-bottom">
                                                <div class="container">
                                                   <div class="tvflex-items">
                                                      <div class="tvproduct-image-title-price">
                                                         {if $product.cover}
                                                            <div class="product-image">
                                                               <img src="{$product.cover.bySize.large_default.url}" alt="{$product.cover.legend}"
                                                                  title="{$product.cover.legend}" itemprop="image">
                                                            </div>
                                                            <div class="tvtitle-price">
                                                               {block name='page_header'}
                                                                  <h1 class="h1" itemprop="name">{block name='page_title'}{$product.name}{/block}</h1>
                                                               {/block}
                                                               {block name='product_prices'}
                                                                  {include file='catalog/_partials/product-prices.tpl'}
                                                               {/block}
                                                            </div>
                                                         {/if}
                                                      </div>
                                                      <div style="padding-top:1.4em;padding-left:4em;display:flex;gap:25px;">
                                                         <div class="tvcart-btn-model" style="">
                                                            <button class="tvall-inner-btn add-to-cart" data-button-action="" type="submit">
                                                            <i class="material-icons shopping-cart">&#xe8b8;</i>
                                                            <span>{l s='CONFIGURE YOUR PRODUCT' d='Shop.Theme.Actions'}</span>
                                                            </button>
                                                         </div>
                                                         <div class="tvcart-btn-model">
                                                            <button class="tvall-inner-btn add-to-cart {if !$product.add_to_cart_url} disabled {/if}"
                                                            data-button-action="add-to-cart" type="submit" {if !$product.add_to_cart_url} disabled
                                                            {/if}>
                                                            {if !$product.add_to_cart_url} <i class='material-icons block'>&#xe14b;</i>
                                                               <span>{l s='Out of stock' d='Shop.Theme.Actions'}</span>
                                                            {else}
                                                               <i class="material-icons shopping-cart">&#xE547;</i>
                                                               <span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
                                                            {/if}
                                                            </button>
                                                         </div>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          {/if} *}
                                       {/if}
                                                      </button>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
   
                                    {if Configuration::get('TVCMSCUSTOMSETTING_PRODUCT_PAGE_BOTTOM_STICKY_STATUS')}
                                          <div class="tvfooter-product-sticky-bottom">
                                             <div class="container">
                                                <div class="tvflex-items">
                                                   <div class="tvproduct-image-title-price">
                                                      {if $product.cover}
                                                         <div class="product-image">
                                                            <img src="{$product.cover.bySize.large_default.url}" alt="{$product.cover.legend}"
                                                               title="{$product.cover.legend}" itemprop="image">
                                                         </div>
                                                         <div class="tvtitle-price">
                                                            {block name='page_header'}
                                                               <h1 class="h1" itemprop="name">{block name='page_title'}{$product.name}{/block}</h1>
                                                            {/block}
                                                            {block name='product_prices'}
                                                               {include file='catalog/_partials/product-prices.tpl'}
                                                            {/block}
                                                         </div>
                                                      {/if}
                                                   </div>
                                                   <div style="padding-top:1.4em;padding-left:4em;display:flex;gap:25px;">
                                                      <div class="tvcart-btn-model" style="">
                                                         <button class="tvall-inner-btn add-to-cart" data-button-action="" type="submit">
                                                         <i class="material-icons shopping-cart">&#xe8b8;</i>
                                                         <span>{l s='CONFIGURE YOUR PRODUCT' d='Shop.Theme.Actions'}</span>
                                                         </button>
                                                      </div>
                                                      <div class="tvcart-btn-model">
                                                         <button class="tvall-inner-btn add-to-cart {if !$product.add_to_cart_url} disabled {/if}"
                                                         data-button-action="add-to-cart" type="submit" {if !$product.add_to_cart_url} disabled
                                                         {/if}>
                                                         {if !$product.add_to_cart_url} <i class='material-icons block'>&#xe14b;</i>
                                                            <span>{l s='Out of stock' d='Shop.Theme.Actions'}</span>
                                                         {else}
                                                            <i class="material-icons shopping-cart">&#xE547;</i>
                                                            <span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
                                                         {/if}
                                                         </button>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                       {/if} 
                                    {/if} 
   
   
   
   
   
   
   
                                 <!--price promise model-->
   
                                 <div class="modal fade" id="pricePromiseModel" tabindex="-1" role="dialog" aria-labelledby="pricePromiseModelTitle"
                                    aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-centered" role="document">
                                       <div class="modal-content">
                                          <div class="modal-header">
   
                                             <h5 class="modal-title" id="exampleModalLongTitle">
                                                Contact us - Price promise
                                             </h5>
   
                                             <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                             </button>
                                          </div>
   
                                          <div class="modal-body">
                                             <p>
                                             <ol>
                                                <li>Check that the product is comparable to one of our products eg. same size and specification</li>
   
                                                <li>Make sure that the prices include any promotional discounts, and exclude any extras and services such
                                                   as delivery or installation.</li>
   
                                                <li>Fill out a quick form here to help us compare the product</li>
   
                                                <li>Fill out the Contact section below including the link to the product on the competitor’s site.</li>
   
                                                <li>Be sure that the link shows an advertised price that you wish for us to beat.
                                                </li>
                                             </ol>
   
                                             </p>
   
                                             <hr>
                                             <div class="row">
   
                                                <div class="col-md-6">
                                                   <form>
   
                                                      <div class="form-group">
                                                         <input type="text" class="form-control" id="PricePromiseNameField" placeholder="First Name"
                                                            required>
                                                      </div>
   
                                                      <div class="form-group">
   
                                                         <input type="tel" class="form-control" id="PricePromiseContactNumber"
                                                            placeholder="Contact Number" required>
                                                      </div>
   
   
                                                      <div class="form-group">
                                                         <textarea class="form-control" placeholder="Enter an optional message here"
                                                            id="PricePromiseTextarea" rows="3"></textarea>
                                                      </div>
   
                                                      <div class="form-group">
                                                         <input type="text" class="form-control" id="pricePromiseUrlField"
                                                            placeholder="Enter link to competitor's product here" required>
                                                      </div>

                                                      <div class="form-group">
                                                         <button type="submit" class="btn btn-primary">Send Request</button>
                                                      </div>
   
                                                   </form>
                                                </div>
                                                <div class="col-md-6">
                                                   <img style="width: 100%" src="https://dunsterhouse.co.uk/img/layout-1300/price_match_promise10.png"
                                                      alt="Price Match Promise">
                                                </div>
                                             </div>
   
                                             
                                                
                                                <div class=" modal-footer">
                                                   <p>Please be assured that we will never sell your details onto third parties. For more information, visit
                                                      our <a href="https://phpstack-688769-2278588.cloudwaysapps.com/content/18-privacy-policy">privacy policy
                                                         page.</a>
                                                      </p>
                                                </div>
   
   
                                          </div>
   
                                          

                                          
                                       </div>
                                    </div>
                                 </div>
   
   
                                 <!--price promise model end-->
   
   
   
   
   
   
   
                                 <footer class="page-footer">
                                    <p style="margin:0px;padding:0px">† Reference to Price on 25th December 2021</p>
                                    <!-- TrustBox widget - Carousel -->
                                    <h3 class="text-center trust-pilot-heading"
                                       style="color:#602D91;font-weight:800;letter-spacing:0px; margin-top:40px;">See what our customers say about us!
                                    </h3>
                                    <div class="trust-pilot-triangle"
                                       style="width:0;height:0;border-left: 50px solid transparent;border-right: 50px solid transparent;border-bottom: 50px solid #e7e7e7;transform:translateX(750px);">
                                    </div>
                                    <div class="trustpilot-widget" data-locale="en-GB" data-template-id="53aa8912dec7e10d38f59f36"
                                       data-businessunit-id="4d8d3c6600006400050f39d3" data-style-height="140px" data-style-width="100%"
                                       data-theme="light" data-stars="4,5" data-review-languages="en" data-font-family="Poppins" data-no-reviews="hide"
                                       data-scroll-to-list="true" data-allow-robots="true" style="background-color:#e7e7e7;padding:40px;">
                                       <a href="https://uk.trustpilot.com/review/www.dunsterhouse.co.uk" target="_blank" rel="noopener">Trustpilot</a>
                                    </div>
                                    <br />
                                    <br />
                                    {block name='page_footer'}
                                       <!-- Footer content -->
                                    {/block}
                                 </footer>
                              {/block}
                              </div>
                              <script>
                                 
                                    
                                 
                           </script>
                           {/block}

                           
                        {/strip}