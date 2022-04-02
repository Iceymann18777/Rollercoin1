.class public Lcom/tappx/sdk/android/BaseAdActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Lcom/tappx/a/y4;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_f

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_f
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/sdk/android/BaseAdActivity;->a:Lcom/tappx/a/y4;

    invoke-virtual {v0}, Lcom/tappx/a/y4;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance v0, Lcom/tappx/a/y4;

    invoke-direct {v0, p0}, Lcom/tappx/a/y4;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/tappx/sdk/android/BaseAdActivity;->a:Lcom/tappx/a/y4;

    .line 3
    invoke-virtual {v0, p1}, Lcom/tappx/a/y4;->a(Landroid/os/Bundle;)V

    .line 4
    invoke-direct {p0}, Lcom/tappx/sdk/android/BaseAdActivity;->a()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/tappx/sdk/android/BaseAdActivity;->a:Lcom/tappx/a/y4;

    invoke-virtual {v0}, Lcom/tappx/a/y4;->a()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/tappx/sdk/android/BaseAdActivity;->a:Lcom/tappx/a/y4;

    invoke-virtual {v0}, Lcom/tappx/a/y4;->b()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/tappx/sdk/android/BaseAdActivity;->a:Lcom/tappx/a/y4;

    invoke-virtual {v0}, Lcom/tappx/a/y4;->c()V

    return-void
.end method
