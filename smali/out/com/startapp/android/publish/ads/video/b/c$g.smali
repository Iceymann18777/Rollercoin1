.class public Lcom/startapp/android/publish/ads/video/b/c$g;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/ads/video/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field private a:Lcom/startapp/android/publish/ads/video/b/c$h;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/startapp/android/publish/ads/video/b/c$h;Ljava/lang/String;I)V
    .registers 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/b/c$g;->a:Lcom/startapp/android/publish/ads/video/b/c$h;

    .line 46
    iput-object p2, p0, Lcom/startapp/android/publish/ads/video/b/c$g;->b:Ljava/lang/String;

    .line 47
    iput p3, p0, Lcom/startapp/android/publish/ads/video/b/c$g;->c:I

    return-void
.end method


# virtual methods
.method public a()Lcom/startapp/android/publish/ads/video/b/c$h;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/b/c$g;->a:Lcom/startapp/android/publish/ads/video/b/c$h;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/b/c$g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .registers 2

    .line 59
    iget v0, p0, Lcom/startapp/android/publish/ads/video/b/c$g;->c:I

    return v0
.end method
