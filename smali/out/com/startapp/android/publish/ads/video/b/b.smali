.class public Lcom/startapp/android/publish/ads/video/b/b;
.super Lcom/startapp/android/publish/ads/video/b/a;
.source "StartAppSDK"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/ads/video/b/b$a;,
        Lcom/startapp/android/publish/ads/video/b/b$b;
    }
.end annotation


# instance fields
.field private h:Landroid/media/MediaPlayer;

.field private i:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>(Landroid/widget/VideoView;)V
    .registers 5

    .line 58
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/b/a;-><init>()V

    const-string v0, "NativeVideoPlayer"

    const/4 v1, 0x4

    const-string v2, "Ctor"

    .line 59
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/b/b;->i:Landroid/widget/VideoView;

    .line 61
    invoke-virtual {p1, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 62
    iget-object p1, p0, Lcom/startapp/android/publish/ads/video/b/b;->i:Landroid/widget/VideoView;

    invoke-virtual {p1, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 63
    iget-object p1, p0, Lcom/startapp/android/publish/ads/video/b/b;->i:Landroid/widget/VideoView;

    invoke-virtual {p1, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method private a(III)Lcom/startapp/android/publish/ads/video/b/c$g;
    .registers 5

    .line 191
    invoke-static {p1}, Lcom/startapp/android/publish/ads/video/b/b$b;->a(I)Lcom/startapp/android/publish/ads/video/b/b$b;

    move-result-object p1

    .line 192
    sget-object v0, Lcom/startapp/android/publish/ads/video/b/b$b;->b:Lcom/startapp/android/publish/ads/video/b/b$b;

    if-ne p1, v0, :cond_b

    sget-object p1, Lcom/startapp/android/publish/ads/video/b/c$h;->b:Lcom/startapp/android/publish/ads/video/b/c$h;

    goto :goto_d

    :cond_b
    sget-object p1, Lcom/startapp/android/publish/ads/video/b/c$h;->a:Lcom/startapp/android/publish/ads/video/b/c$h;

    .line 194
    :goto_d
    invoke-static {p2}, Lcom/startapp/android/publish/ads/video/b/b$a;->a(I)Lcom/startapp/android/publish/ads/video/b/b$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapp/android/publish/ads/video/b/b$a;->toString()Ljava/lang/String;

    move-result-object p2

    .line 195
    new-instance v0, Lcom/startapp/android/publish/ads/video/b/c$g;

    invoke-direct {v0, p1, p2, p3}, Lcom/startapp/android/publish/ads/video/b/c$g;-><init>(Lcom/startapp/android/publish/ads/video/b/c$h;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 4

    const-string v0, "NativeVideoPlayer"

    const/4 v1, 0x4

    const-string v2, "start"

    .line 73
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/b/b;->i:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    return-void
.end method

.method public a(I)V
    .registers 5

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seekTo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeVideoPlayer"

    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/b/b;->i:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoLocation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeVideoPlayer"

    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 134
    invoke-super {p0, p1}, Lcom/startapp/android/publish/ads/video/b/a;->a(Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lcom/startapp/android/publish/ads/video/b/b;->i:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/b/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .registers 5

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMute("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeVideoPlayer"

    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/b/b;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2c

    if-eqz p1, :cond_27

    const/4 p1, 0x0

    .line 100
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_2c

    :cond_27
    const/high16 p1, 0x3f800000    # 1.0f

    .line 102
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public b()V
    .registers 4

    const-string v0, "NativeVideoPlayer"

    const/4 v1, 0x4

    const-string v2, "pause"

    .line 85
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/b/b;->i:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    return-void
.end method

.method public c()V
    .registers 4

    const-string v0, "NativeVideoPlayer"

    const/4 v1, 0x4

    const-string v2, "stop"

    .line 91
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/b/b;->i:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    return-void
.end method

.method public d()I
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/b/b;->i:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public e()I
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/b/b;->i:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    return v0
.end method

.method public f()Z
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/b/b;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public g()V
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/b/b;->h:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 141
    iput-object v1, p0, Lcom/startapp/android/publish/ads/video/b/b;->h:Landroid/media/MediaPlayer;

    .line 143
    :cond_7
    invoke-static {}, Lcom/startapp/android/publish/ads/video/c;->a()Lcom/startapp/android/publish/ads/video/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/ads/video/c;->a(Lcom/startapp/android/publish/ads/video/b/c$c;)V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    const-string p1, "NativeVideoPlayer"

    const/4 v0, 0x4

    const-string v1, "onCompletion"

    .line 172
    invoke-static {p1, v0, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/b/b;->d:Lcom/startapp/android/publish/ads/video/b/c$d;

    if-eqz v0, :cond_17

    const/4 v0, 0x3

    const-string v1, "Dispatching onCompletion"

    .line 174
    invoke-static {p1, v0, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 175
    iget-object p1, p0, Lcom/startapp/android/publish/ads/video/b/b;->d:Lcom/startapp/android/publish/ads/video/b/c$d;

    invoke-interface {p1}, Lcom/startapp/android/publish/ads/video/b/c$d;->a()V

    :cond_17
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 7

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeVideoPlayer"

    const/4 v2, 0x6

    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/b/b;->c:Lcom/startapp/android/publish/ads/video/b/c$e;

    if-eqz v0, :cond_41

    const/4 v0, 0x3

    const-string v2, "Dispatching onError"

    .line 183
    invoke-static {v1, v0, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p1, :cond_35

    .line 184
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    goto :goto_36

    :cond_35
    const/4 p1, -0x1

    .line 185
    :goto_36
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/b/b;->c:Lcom/startapp/android/publish/ads/video/b/c$e;

    invoke-direct {p0, p2, p3, p1}, Lcom/startapp/android/publish/ads/video/b/b;->a(III)Lcom/startapp/android/publish/ads/video/b/c$g;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/startapp/android/publish/ads/video/b/c$e;->a(Lcom/startapp/android/publish/ads/video/b/c$g;)Z

    move-result p1

    return p1

    :cond_41
    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 5

    const-string v0, "NativeVideoPlayer"

    const/4 v1, 0x4

    const-string v2, "onPrepared"

    .line 148
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 149
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/b/b;->h:Landroid/media/MediaPlayer;

    .line 150
    iget-object p1, p0, Lcom/startapp/android/publish/ads/video/b/b;->b:Lcom/startapp/android/publish/ads/video/b/c$f;

    if-eqz p1, :cond_19

    const/4 p1, 0x3

    const-string v1, "Dispatching onPrepared"

    .line 151
    invoke-static {v0, p1, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/startapp/android/publish/ads/video/b/b;->b:Lcom/startapp/android/publish/ads/video/b/c$f;

    invoke-interface {p1}, Lcom/startapp/android/publish/ads/video/b/c$f;->a()V

    .line 154
    :cond_19
    iget-object p1, p0, Lcom/startapp/android/publish/ads/video/b/b;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/c;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/startapp/android/publish/ads/video/b/b;->h:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_2e

    .line 155
    new-instance v0, Lcom/startapp/android/publish/ads/video/b/b$1;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/ads/video/b/b$1;-><init>(Lcom/startapp/android/publish/ads/video/b/b;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    goto :goto_3f

    .line 165
    :cond_2e
    iget-object p1, p0, Lcom/startapp/android/publish/ads/video/b/b;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/c;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 166
    invoke-static {}, Lcom/startapp/android/publish/ads/video/c;->a()Lcom/startapp/android/publish/ads/video/c;

    move-result-object p1

    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/b/b;->f:Lcom/startapp/android/publish/ads/video/b/c$c;

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/ads/video/c;->a(Lcom/startapp/android/publish/ads/video/b/c$c;)V

    :cond_3f
    :goto_3f
    return-void
.end method
