.class public Lcom/startapp/android/publish/ads/video/c/a/a/d;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/d;->a:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/a/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/a/d;->b:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/c/a/a/d;->b:Ljava/lang/String;

    return-void
.end method
