<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="row" id="content-container">
    {% include 96boards-tab-bar.html %}
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-4 col-md-push-8" >
                <div id="product-image-carousel">
                    <div class="owl-carousel owl-theme">
                        {% if page.product_specification %}
                            {% for product_image in page.product_images %}
                                {% assign url-name = page.permalink | split: "/" %}
                                {% assign url-name-new = url-name[2] %}
                                <div class="activity-block item">
                                    <a href="#" data-featherlight="../{{page.product_specification}}/{{url-name-new}}/images/{{ product_image }}">
                                        <img src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                                         data-src="../{{page.product_specification}}/{{url-name-new}}/images/{{ product_image }}"
                                         class="owl-lazy lazyload img-responsive" alt="{{product_image}}" />
                                    </a>
                                </div>
                            {% endfor %}
                        {% endif %}
                    </div>
                </div>
    
                {% if page.product_buy_links %}
                {% if page.out-of-stock == true %}
                    <ul class="list-group buy-links">
                        <li href="#" class="list-group-item active">
                            <b title="Buy Now">Buy Now</b><i class="glyphicon glyphicon-shopping-cart pull-right" style="margin-top:8px;"></i>
                        </li>
                            <li class="list-group-item">
                                <small>
                                    Currently out of stock
                                </small>
                            </li>
                    </ul>
                    {% else %}
                    <ul class="list-group buy-links">
                        <li href="#" class="list-group-item active"><b title="Buy Now">Buy Now</b><i class="glyphicon glyphicon-shopping-cart pull-right" style="margin-top:8px;"></i></li>
                        {% for buy_link in page.product_buy_links %}
                            <li class="list-group-item">
                                <a href="{{ buy_link.link-url }}">
                                    <span class="text-left">{{ buy_link.link-title }}</span>{% if buy_link.link-price %}<span class=" pull-right buy-price">
                                        {% if buy_link.link-price-currency %}
                                            {% if buy_link.link-price-currency == "JPY" %}JP&yen;
                                            {% else %}
                                            {{buy_link.link-price-currency}}
                                            {% endif %}
                                        {% endif %}
                                        {{buy_link.link-price}}
                                        </span>{% endif %}
                                </a>
                                <small>
                                    {% if buy_link.type == "package" %}<span>Package Deal</span>{% endif %}
                                    {% if buy_link.type == "board" %}<span>Board</span>{% endif %}
                                    {% if buy_link.from %}<a href="{{ buy_link.link-url }}">Buy from {{buy_link.from}}</a>{% endif %}
                                </small>
                            </li>
                        {% endfor %}
                    </ul>
                    {% endif %}
                {% endif %}
    
                <!--Side Panel Start------------------------------->
                <!-- {% if page.product_buy_links %}
                <ul class="list-group">
                    <li href="#" class="list-group-item active"><b>Buy Links</b></li>
                    {% for buy_link in page.product_buy_links %}
                        <li class="list-group-item">
                            <a href="{{ buy_link.link-url }}">
                                <span class="text-left">{{ buy_link.link-title }}</span>
                            </a>
                        </li>
                    {% endfor %}
                </ul>
                {% endif %} -->
    
                {% if page.product_video[0] %}
                    <div class="row">
                        <div class="embed-responsive embed-responsive-16by9">
                            <iframe class="lazyload embed-responsive-item"
                            data-src="{{page.product_video[0]}}">
                            </iframe>
                        </div>
                    </div>
                    <br />
                {% endif %}
                {% if page.product_video[1] %}
                    <div class="row">
                        <div class="embed-responsive embed-responsive-16by9">
                            <iframe class="lazyload embed-responsive-item"
                            data-src="{{page.product_video[1]}}">
                            </iframe>
                        </div>
                    </div>
                    <br />
                {% endif %}
    
                {% if page.product_documents %}
                    <ul class="list-group">
                        <li href="#" class="list-group-item active"><b title="Documents and Resources">Documents / Resources</b>
                        <i class="fa fa-file-text pull-right" aria-hidden="true"></i>
                        </li>
                        {% for doc in page.product_documents %}
                            <li class="list-group-item">
                                <a href="{{ doc.link }}">
                                    <span class="text-left">{{ doc.title }}</span>
                                </a>
                            </li>
                        {% endfor %}
                    </ul>
                    <br />
                {% endif %}
    
                {% if page.product_os %}
                    <ul class="list-group">
                        <li href="#" class="list-group-item active"><b title="Operating Systems">OS</b>
                        <i class="fa fa-terminal pull-right" aria-hidden="true"></i>
                        </li>
                        {% for os in page.product_os %}
                            <li class="list-group-item">
                                <a href="{{ os.link }}">
                                    <span class="text-left">{{ os.title }}</span>
                                </a>
                            </li>
                        {% endfor %}
                    </ul>
                {% endif %}
    
    
                {% if page.product_middleware %}
                    <ul class="list-group">
                        <li href="#" class="list-group-item active"><b title="Operating Systems">Middleware & SDKS</b>
                        <i class="fa fa-code pull-right" aria-hidden="true"></i>
                        </li>
                        {% for middleware in page.product_middleware %}
                            <li class="list-group-item">
                                <a href="{{ middleware.link }}">
                                    <span class="text-left">{{ middleware.title }}</span>
                                </a>
                            </li>
                        {% endfor %}
                    </ul>
                {% endif %}
    
                {% if page.product_third_party_images %}
                    <ul class="list-group">
                        <li href="#" class="list-group-item active">
                            <b>Third Party Images</b>
                            <i class="fa fa-external-link-square pull-right" aria-hidden="true"></i>
                        </li>
                            {% for image in page.product_third_party_images %}
                                <li class="list-group-item">
                                    <a href="{{ image.link }}">
                                        <span class="text-left">{{ image.title }}</span>
                                    </a>
                                </li>
                            {% endfor %}
                    </ul>
                {% endif %}
			    {% if page.product_previous_version %}
                    <ul class="list-group">
                        <li href="#" class="list-group-item active">
                            <b>{{page.product_previous_version.version}}</b>
                        </li>
                        {% for item in page.product_previous_version.links %}
                            <li class="list-group-item">
                                <a href="{{ item.link }}">
                                    <span class="text-left">{{ item.title }}</span>
                                </a>
                            </li>
                        {% endfor %}
                    </ul>
                {% endif %}
                {% if page.product_more_info %}
                    <ul class="list-group">
                        <li href="#" class="list-group-item active"><b>More Info</b>
                        <i class="fa fa-info-circle pull-right" style="margin-top:8px;"></i>
                    </li>
                    {% for info in page.product_more_info %}
                        <li class="list-group-item">
                            <a href="{{ info.link }}">
                                <span class="text-left">{{ info.title }}</span>
                            </a>
                        </li>
                    {% endfor %}
                    </ul>
                {% endif %}
    
                {% if page.product_media_highlights %}
                {% assign url-product-name = page.permalink | split: "/" %}
                {% assign url-product-name = url-product-name[2] %}
    
                {% assign media-highlights = site.data.news.entries | where: "tag", url-product-name %}
                    <ul class="list-group">
                        <li href="#" class="list-group-item active"><b>Media Highlights</b></li>
                            {% for info in media-highlights %}
                                <li class="list-group-item">
                                    <a href="{{ info.link }}">
                                        <span class="text-left">{{ info.title }}</span>
                                    </a>
                                </li>
                            {% endfor %}
                    </ul>
                {% endif %}
                <!--Side Panel END---------------------------->
            </div>
            <div class="col-sm-12 col-md-8 col-md-pull-4">
                {{content}}
            </div>
        </div><!-- end row-->
        <div class="row">
    
        <div class="col-md-8">
            <!--Main Section Start---------------------------->
            {% if page.product_accessories %}
            <hr/>
            {% elsif page.product_kits %}
            <hr/>
            {% elsif page.product_mezzanine %}
            <hr/>
            {% endif %}
    
            <div class="row product-bottom-panel">
    
                {% if page.product_accessories %}
                <div class="col-md-4">
                    <ul class="list-group" id="features-list">
                        <a href="/products/accessories/"><li class="list-group-item active"><b>Accessories</b></li></a>
                        {% for accessory in page.product_accessories %}
                            <li class="list-group-item">
                                <a href="{{accessory.link}}">{{ accessory.title }}</a>
                            </li>
                        {% endfor %}
                    </ul>
                </div>
                {% endif %}
    
                {% if page.product_mezzanine %}
                <div class="col-md-4">
                    <ul class="list-group" id="features-list">
                        <a href="/products/mezzanine/"><li class="list-group-item active"><b>Mezzanine</b></li></a>
                        {% for mezzanine in page.product_mezzanine %}
                            <li class="list-group-item">
                                <a href="{{mezzanine.link}}">{{ mezzanine.title }}</a>
                            </li>
                        {% endfor %}
                    </ul>
                </div>
                {% endif %}
    
                {% if page.product_kits %}
                <div class="col-md-4">
                    <ul class="list-group" id="features-list">
                        <li href="#" class="list-group-item active"><b>Kits</b></li>
                        {% for kit in page.product_kits %}
                            <li class="list-group-item">
                                <a href="{{kit.link}}">{{ kit.title }}</a>
                            </li>
                        {% endfor %}
                    </ul>
                </div>
                {% endif %}
            </div>
            <!--Main Section END--------------------------->    
        </div>    
        </div>
    </div>
</div>
</body>
</html>