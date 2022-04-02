.class Lcom/startapp/android/publish/ads/a/d$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/adsCommon/g/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/a/d;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/ads/a/d;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/a/d;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/d$1;->a:Lcom/startapp/android/publish/ads/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/d$1;->a:Lcom/startapp/android/publish/ads/a/d;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/startapp/android/publish/ads/a/d;->a(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
