.class public Lcom/tappx/sdk/android/VideoAdActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/n3$a;


# static fields
.field public static final VIDEO_CLASS_EXTRAS_KEY:Ljava/lang/String; = "video_view_class_name"

.field public static final VIDEO_URL:Ljava/lang/String; = "video_url"


# instance fields
.field private a:Lcom/tappx/a/n3;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tappx/sdk/android/VideoAdActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p0, "video_view_class_name"

    const-string v1, "mraid"

    .line 3
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "video_url"

    .line 4
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private a(Landroid/os/Bundle;)Lcom/tappx/a/n3;
    .registers 4

    .line 5
    new-instance v0, Lcom/tappx/a/p4;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p0}, Lcom/tappx/a/p4;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/tappx/a/n3$a;)V

    return-object v0
.end method

.method public static startMraid(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/tappx/sdk/android/VideoAdActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 3
    :try_start_4
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    const-string v0, "audio"

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_e
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tappx/sdk/android/VideoAdActivity;->a:Lcom/tappx/a/n3;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/tappx/a/n3;->a(IILandroid/content/Intent;)V

    :cond_7
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/sdk/android/VideoAdActivity;->a:Lcom/tappx/a/n3;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/tappx/a/n3;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 3
    iget-object v0, p0, Lcom/tappx/sdk/android/VideoAdActivity;->a:Lcom/tappx/a/n3;

    invoke-virtual {v0}, Lcom/tappx/a/n3;->f()V

    :cond_12
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/tappx/sdk/android/VideoAdActivity;->a:Lcom/tappx/a/n3;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0, p1}, Lcom/tappx/a/n3;->a(Landroid/content/res/Configuration;)V

    :cond_a
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 8
    :try_start_1e
    invoke-direct {p0, p1}, Lcom/tappx/sdk/android/VideoAdActivity;->a(Landroid/os/Bundle;)Lcom/tappx/a/n3;

    move-result-object p1

    iput-object p1, p0, Lcom/tappx/sdk/android/VideoAdActivity;->a:Lcom/tappx/a/n3;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_24} :catch_28

    .line 17
    invoke-virtual {p1}, Lcom/tappx/a/n3;->g()V

    return-void

    .line 18
    :catch_28
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/sdk/android/VideoAdActivity;->a:Lcom/tappx/a/n3;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lcom/tappx/a/n3;->h()V

    .line 4
    :cond_7
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 5
    invoke-virtual {p0}, Lcom/tappx/sdk/android/VideoAdActivity;->a()V

    return-void
.end method

.method public onFinish()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/sdk/android/VideoAdActivity;->a:Lcom/tappx/a/n3;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lcom/tappx/a/n3;->i()V

    .line 4
    :cond_7
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/tappx/sdk/android/VideoAdActivity;->a:Lcom/tappx/a/n3;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0}, Lcom/tappx/a/n3;->j()V

    :cond_a
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/tappx/sdk/android/VideoAdActivity;->a:Lcom/tappx/a/n3;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0, p1}, Lcom/tappx/a/n3;->a(Landroid/os/Bundle;)V

    :cond_a
    return-void
.end method

.method public onSetContentView(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method
