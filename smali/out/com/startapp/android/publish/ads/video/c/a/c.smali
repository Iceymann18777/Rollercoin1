.class public Lcom/startapp/android/publish/ads/video/c/a/c;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/ads/video/c/a/c$a;
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/video/c/a/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/ads/video/c/a/c;)I
    .registers 1

    .line 22
    iget p0, p0, Lcom/startapp/android/publish/ads/video/c/a/c;->c:I

    return p0
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 50
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/startapp/android/publish/ads/video/c/a/c;->a:I

    .line 51
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/startapp/android/publish/ads/video/c/a/c;->b:I

    .line 52
    iget v1, p0, Lcom/startapp/android/publish/ads/video/c/a/c;->a:I

    mul-int v1, v1, v0

    iput v1, p0, Lcom/startapp/android/publish/ads/video/c/a/c;->c:I

    .line 54
    invoke-static {p1}, Lcom/startapp/common/a/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "WIFI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    const/high16 p1, 0x3f400000    # 0.75f

    .line 55
    iget v0, p0, Lcom/startapp/android/publish/ads/video/c/a/c;->c:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/startapp/android/publish/ads/video/c/a/c;->c:I

    :cond_2c
    return-void
.end method

.method private a(Lcom/startapp/android/publish/ads/video/c/a/a/b;)Z
    .registers 3

    .line 90
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/c/a/a/b;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "video/.*(?i)(mp4|3gpp|mp2t|webm|matroska)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/startapp/android/publish/ads/video/c/a/a/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/ads/video/c/a/a/b;",
            ">;)",
            "Lcom/startapp/android/publish/ads/video/c/a/a/b;"
        }
    .end annotation

    if-eqz p1, :cond_15

    .line 37
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/video/c/a/c;->c(Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_15

    .line 40
    :cond_9
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/c/a/c;->a()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/video/c/a/c;->b(Ljava/util/List;)Lcom/startapp/android/publish/ads/video/c/a/a/b;

    move-result-object p1

    return-object p1

    :cond_15
    :goto_15
    const/4 p1, 0x0

    return-object p1
.end method

.method protected a()Ljava/util/Comparator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/startapp/android/publish/ads/video/c/a/a/b;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/startapp/android/publish/ads/video/c/a/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/startapp/android/publish/ads/video/c/a/c$a;-><init>(Lcom/startapp/android/publish/ads/video/c/a/c;Lcom/startapp/android/publish/ads/video/c/a/c$1;)V

    return-object v0
.end method

.method protected b(Ljava/util/List;)Lcom/startapp/android/publish/ads/video/c/a/a/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/ads/video/c/a/a/b;",
            ">;)",
            "Lcom/startapp/android/publish/ads/video/c/a/a/b;"
        }
    .end annotation

    if-eqz p1, :cond_10

    .line 82
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x0

    .line 83
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapp/android/publish/ads/video/c/a/a/b;

    return-object p1

    :cond_10
    const/4 p1, 0x0

    return-object p1
.end method

.method protected c(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/ads/video/c/a/a/b;",
            ">;)I"
        }
    .end annotation

    .line 94
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 95
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/ads/video/c/a/a/b;

    .line 97
    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/video/c/a/a/b;->f()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-direct {p0, v1}, Lcom/startapp/android/publish/ads/video/c/a/c;->a(Lcom/startapp/android/publish/ads/video/c/a/a/b;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 98
    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 102
    :cond_20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method
