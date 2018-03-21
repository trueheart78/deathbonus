# Deathbon.us Redirecter

Default channel is [Dodger's aka Dexbonus][dodger channel].

![dodger][dodger gif]

## Endpoints

### `watch/[channel_name]`

Redirects to `https://www.twitch.tv/[channel_name]?no-mobile-redirect=true`

### `sub/[channel_name]`

Redirects to `https://www.twitch.tv/products/[channel_name]/ticket`

## Running the Server

It is designed to be run with `Shotgun`, to enable code reloading
without having to restart the server.

```
bundle exec shotgun
```

You can also run it via basic Ruby.

```
bundle exec ruby server.rb
```

## Simple Access via Ngrok

[Ngrok][ngrok] allows access via tunnelling, so that you can interact with the
Sinatra server without having to go through the hassle of deploying it everytime
you make a change.

To access the `Shotgun` server, use:

```
ngrok http 9393
```

If you just want to access the basic Sinatra server, use:

```
ngrok http 4567
```

[dodger channel]: https://www.twitch.tv/dexbonus?no-mobile-redirect=true
[dodger gif]: images/dodger.gif
[ngrok]: https://ngrok.com/
