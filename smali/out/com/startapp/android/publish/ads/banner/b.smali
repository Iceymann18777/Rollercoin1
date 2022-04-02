.class Lcom/startapp/android/publish/ads/banner/b;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/startapp/android/publish/ads/banner/b;->a:Landroid/content/Context;

    const-string p1, "adTag"

    .line 16
    invoke-direct {p0, p2, p1}, Lcom/startapp/android/publish/ads/banner/b;->a(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/ads/banner/b;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 23
    :try_start_2
    invoke-interface {p1, v1, p2, v0}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_13

    .line 25
    iget-object p1, p0, Lcom/startapp/android/publish/ads/banner/b;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_17

    .line 27
    :cond_13
    invoke-interface {p1, v1, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_18

    :goto_17
    move-object v1, p1

    :catch_18
    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/b;->b:Ljava/lang/String;

    return-object v0
.end method
