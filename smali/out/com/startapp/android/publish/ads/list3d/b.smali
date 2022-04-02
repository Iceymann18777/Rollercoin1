.class public Lcom/startapp/android/publish/ads/list3d/b;
.super Landroid/widget/ArrayAdapter;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/startapp/android/publish/ads/list3d/ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/ads/list3d/ListItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 p3, 0x0

    .line 24
    invoke-direct {p0, p1, p3, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 25
    iput-object p4, p0, Lcom/startapp/android/publish/ads/list3d/b;->a:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lcom/startapp/android/publish/ads/list3d/b;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/startapp/android/publish/ads/list3d/ListItem;)J
    .registers 5

    .line 68
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/list3d/ListItem;->r()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 69
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/list3d/ListItem;->r()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    .line 72
    :cond_15
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/metaData/MetaData;->getIABDisplayImpressionDelayInSeconds()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13

    if-nez p2, :cond_10

    .line 34
    new-instance p2, Lcom/startapp/android/publish/ads/list3d/d;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/list3d/b;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/startapp/android/publish/ads/list3d/d;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {p2}, Lcom/startapp/android/publish/ads/list3d/d;->a()Landroid/widget/RelativeLayout;

    move-result-object p3

    goto :goto_19

    .line 37
    :cond_10
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/startapp/android/publish/ads/list3d/d;

    move-object v8, p3

    move-object p3, p2

    move-object p2, v8

    .line 40
    :goto_19
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/list3d/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/ads/list3d/ListItem;

    .line 42
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/list3d/ListItem;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/adsCommon/b;->a(Ljava/lang/String;)Lcom/startapp/android/publish/common/metaData/MetaDataStyle;

    move-result-object v1

    .line 44
    invoke-virtual {p2, v1}, Lcom/startapp/android/publish/ads/list3d/d;->a(Lcom/startapp/android/publish/common/metaData/MetaDataStyle;)V

    .line 46
    invoke-virtual {p2}, Lcom/startapp/android/publish/ads/list3d/d;->c()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/list3d/ListItem;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {p2}, Lcom/startapp/android/publish/ads/list3d/d;->d()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/list3d/ListItem;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-static {}, Lcom/startapp/android/publish/ads/list3d/f;->a()Lcom/startapp/android/publish/ads/list3d/f;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/ads/list3d/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/ads/list3d/f;->a(Ljava/lang/String;)Lcom/startapp/android/publish/ads/list3d/e;

    move-result-object v1

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/list3d/ListItem;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/list3d/ListItem;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/startapp/android/publish/ads/list3d/e;->a(ILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_70

    .line 52
    invoke-virtual {p2}, Lcom/startapp/android/publish/ads/list3d/d;->b()Landroid/widget/ImageView;

    move-result-object p1

    const v1, 0x1080093

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    invoke-virtual {p2}, Lcom/startapp/android/publish/ads/list3d/d;->b()Landroid/widget/ImageView;

    move-result-object p1

    const-string v1, "tag_error"

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_80

    .line 55
    :cond_70
    invoke-virtual {p2}, Lcom/startapp/android/publish/ads/list3d/d;->b()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 56
    invoke-virtual {p2}, Lcom/startapp/android/publish/ads/list3d/d;->b()Landroid/widget/ImageView;

    move-result-object p1

    const-string v1, "tag_ok"

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 58
    :goto_80
    invoke-virtual {p2}, Lcom/startapp/android/publish/ads/list3d/d;->e()Lcom/startapp/android/publish/a/b;

    move-result-object p1

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/list3d/ListItem;->k()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/startapp/android/publish/a/b;->setRating(F)V

    .line 59
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/list3d/ListItem;->q()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/startapp/android/publish/ads/list3d/d;->a(Z)V

    .line 62
    invoke-static {}, Lcom/startapp/android/publish/ads/list3d/f;->a()Lcom/startapp/android/publish/ads/list3d/f;

    move-result-object p1

    iget-object p2, p0, Lcom/startapp/android/publish/ads/list3d/b;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/startapp/android/publish/ads/list3d/f;->a(Ljava/lang/String;)Lcom/startapp/android/publish/ads/list3d/e;

    move-result-object v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/list3d/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/list3d/ListItem;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/list3d/ListItem;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/startapp/android/publish/adsCommon/d/b;

    iget-object p1, p0, Lcom/startapp/android/publish/ads/list3d/b;->a:Ljava/lang/String;

    invoke-direct {v5, p1}, Lcom/startapp/android/publish/adsCommon/d/b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/ads/list3d/b;->a(Lcom/startapp/android/publish/ads/list3d/ListItem;)J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Lcom/startapp/android/publish/ads/list3d/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;J)V

    return-object p3
.end method
