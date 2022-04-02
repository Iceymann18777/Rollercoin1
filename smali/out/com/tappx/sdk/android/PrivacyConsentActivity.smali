.class public Lcom/tappx/sdk/android/PrivacyConsentActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Lcom/tappx/a/l2;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/sdk/android/PrivacyConsentActivity;->a:Lcom/tappx/a/l2;

    invoke-virtual {v0}, Lcom/tappx/a/l2;->a()Z

    move-result v0

    if-nez v0, :cond_b

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
    new-instance v0, Lcom/tappx/a/l2;

    invoke-direct {v0, p0}, Lcom/tappx/a/l2;-><init>(Lcom/tappx/sdk/android/PrivacyConsentActivity;)V

    iput-object v0, p0, Lcom/tappx/sdk/android/PrivacyConsentActivity;->a:Lcom/tappx/a/l2;

    .line 3
    invoke-virtual {v0, p1}, Lcom/tappx/a/l2;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/tappx/sdk/android/PrivacyConsentActivity;->a:Lcom/tappx/a/l2;

    invoke-virtual {v0}, Lcom/tappx/a/l2;->b()V

    return-void
.end method
