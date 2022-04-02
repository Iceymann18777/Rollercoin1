.class public abstract Lcom/tappx/sdk/android/Tappx;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPrivacyManager(Landroid/content/Context;)Lcom/tappx/sdk/android/TappxPrivacyManager;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/tappx/a/o2;->a(Landroid/content/Context;)Lcom/tappx/a/o2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tappx/a/o2;->a()Lcom/tappx/sdk/android/TappxPrivacyManager;

    move-result-object p0

    return-object p0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "3.1.8"

    return-object v0
.end method

.method protected static sbmp(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lcom/tappx/a/o;->a:Z

    .line 2
    sput-boolean p0, Lcom/tappx/a/o;->b:Z

    return-void
.end method
