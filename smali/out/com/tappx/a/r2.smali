.class final Lcom/tappx/a/r2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/sdk/android/TappxPrivacyManager;


# instance fields
.field private final a:Lcom/tappx/a/n2;


# direct methods
.method constructor <init>(Lcom/tappx/a/n2;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    iput-object p1, p0, Lcom/tappx/a/r2;->a:Lcom/tappx/a/n2;

    return-void
.end method


# virtual methods
.method public checkAndShowPrivacyDisclaimer(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/tappx/a/r2;->checkAndShowPrivacyDisclaimer(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public checkAndShowPrivacyDisclaimer(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/tappx/a/r2;->a:Lcom/tappx/a/n2;

    invoke-virtual {v0, p1, p2}, Lcom/tappx/a/n2;->a(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method public denyPersonalInfoConsent()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/r2;->a:Lcom/tappx/a/n2;

    invoke-virtual {v0}, Lcom/tappx/a/n2;->h()V

    return-void
.end method

.method public grantPersonalInfoConsent()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/r2;->a:Lcom/tappx/a/n2;

    invoke-virtual {v0}, Lcom/tappx/a/n2;->i()V

    return-void
.end method

.method public renewPrivacyConsent(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/r2;->a:Lcom/tappx/a/n2;

    invoke-virtual {v0, p1}, Lcom/tappx/a/n2;->a(Landroid/content/Context;)V

    return-void
.end method

.method public setAutoPrivacyDisclaimerEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/r2;->a:Lcom/tappx/a/n2;

    invoke-virtual {v0, p1}, Lcom/tappx/a/n2;->a(Z)V

    return-void
.end method

.method public setGDPRConsent(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/r2;->a:Lcom/tappx/a/n2;

    invoke-virtual {v0, p1}, Lcom/tappx/a/n2;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setUSPrivacy(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/r2;->a:Lcom/tappx/a/n2;

    invoke-virtual {v0, p1}, Lcom/tappx/a/n2;->b(Ljava/lang/String;)V

    return-void
.end method
