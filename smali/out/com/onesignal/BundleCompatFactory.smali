.class Lcom/onesignal/BundleCompatFactory;
.super Ljava/lang/Object;
.source "BundleCompat.java"


# direct methods
.method static getInstance()Lcom/onesignal/BundleCompat;
    .registers 2

    .line 208
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_c

    .line 209
    new-instance v0, Lcom/onesignal/BundleCompatPersistableBundle;

    invoke-direct {v0}, Lcom/onesignal/BundleCompatPersistableBundle;-><init>()V

    return-object v0

    .line 210
    :cond_c
    new-instance v0, Lcom/onesignal/BundleCompatBundle;

    invoke-direct {v0}, Lcom/onesignal/BundleCompatBundle;-><init>()V

    return-object v0
.end method
