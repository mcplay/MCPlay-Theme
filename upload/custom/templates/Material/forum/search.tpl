{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="container">
  <div class="card">
    <div class="card-body">
      <h2>{$FORUM_SEARCH}</h2>

      {if isset($ERROR)}
        <div class="alert alert-danger">
          {$ERROR}
        </div>
      {/if}

      <form role="form" method="post" action="{$FORM_ACTION}">
        <div class="input-group">
          <input type="hidden" name="token" value="{$TOKEN}">
        </div>
        <div class="input-group">
          <input type="text" class="form-control" name="forum_search" placeholder="{$SEARCH}">
          <div class="input-group-append">
            <button type="submit" class="btn btn-secondary"><i class="fas fa-search"></i> {$SEARCH}</button>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>

{include file='footer.tpl'}