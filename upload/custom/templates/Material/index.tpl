{include file='header.tpl'}

<div class="jumbotron jumbotron-fluid home-header">
	{include file='navbar.tpl'}
  <div class="container text-center">
	  <h4 class="display-4 text-white bg-dark">MCPlayNetwork</h4>
		<p class="lead text-white bg-dark">Free Minecraft: Java Edition Multiplayer Server</p>
  </div>
</div>

<div class="container">
<div class="card">
  <div class="card-body">
	{if isset($HOME_SESSION_FLASH)}
        <div class="alert alert-info">
            {$HOME_SESSION_FLASH}
        </div>
	{/if}
	{if isset($HOME_SESSION_ERROR_FLASH)}
        <div class="alert alert-danger">
            {$HOME_SESSION_ERROR_FLASH}
        </div>
	{/if}
	<div class="row">

	  {if isset($NEWS)}
	  <div class="col-md-9">
		{foreach from=$NEWS item=item}
		<div class="card">
		  <div class="card-header">
			{if $item.label}{$item.label} {/if}<a href="{$item.url}">{$item.title}</a>
			<span class="float-md-right" data-toggle="tooltip" title="{$item.date}">{$item.time_ago}</span>
		  </div>
		  <div class="card-body">
			<div class="forum_post">
			  {$item.content}
			</div>
			<hr />
			<a href="{$item.author_url}"><img class="rounded-circle" style="height:30px;width=30px;" src="{$item.author_avatar}" /></a> <a data-poload="{$USER_INFO_URL}{$item.author_id}" data-html="true" data-placement="top" href="{$item.author_url}" style="{$item.author_style}">{$item.author_name}</a>
		    <span class="float-md-right"><a href="{$item.url}" class="btn btn-primary btn-sm">{$READ_FULL_POST} »</a></span>
		  </div>
		</div>
		<br />
		{/foreach}
	  </div>
	  <div class="col-md-3">

	  {else}
	  <div class="col-md-3 offset-md-6">
	  {/if}
			<div class="card">
	  		<div class="card-body">
  	  		<h5 class="card-title">{$SOCIAL}</h5>
    			<a href="https://twitter.com/MCPlayNetwork">
						<i class="fab fa-twitter-square fa-3x social"></i></button>
					</a>
    			<a href="https://www.mcplay.biz/youtube/">
						<i class="fab fa-youtube-square fa-3x social"></i></button>
					</a>
    			<a href="https://www.mcplay.biz/discord/">
						<i class="fab fa-discord fa-3x social"></i></button>
					</a>
  			</div>
			</div>

	    <hr />
		{if count($WIDGETS)}
		  {foreach from=$WIDGETS item=widget}
			{$widget}
			<br />
		  {/foreach}
		{/if}

	  </div>
	</div>
  </div>
</div>
</div>

{include file='footer.tpl'}
