.class public Lcom/startapp/android/publish/ads/video/f;
.super Lcom/startapp/android/publish/ads/a/c;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/ads/video/f$c;,
        Lcom/startapp/android/publish/ads/video/f$b;,
        Lcom/startapp/android/publish/ads/video/f$a;
    }
.end annotation


# instance fields
.field protected A:I

.field protected B:Ljava/lang/String;

.field protected C:Landroid/os/Handler;

.field protected D:Landroid/os/Handler;

.field protected E:Landroid/os/Handler;

.field protected F:Landroid/os/Handler;

.field private G:Landroid/widget/RelativeLayout;

.field private H:Landroid/widget/RelativeLayout;

.field private I:I

.field private J:I

.field private K:Z

.field private L:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private N:I

.field private O:Z

.field private P:Z

.field private Q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/ads/video/tracking/FractionTrackingLink;",
            ">;>;"
        }
    .end annotation
.end field

.field private R:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/ads/video/tracking/AbsoluteTrackingLink;",
            ">;>;"
        }
    .end annotation
.end field

.field private S:J

.field private T:Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;

.field private U:J

.field private V:J

.field private W:Lcom/b/a/a/a/b/a/a;

.field protected i:Lcom/startapp/android/publish/ads/video/b/c;

.field protected j:Landroid/widget/VideoView;

.field protected k:Landroid/widget/ProgressBar;

.field protected l:Z

.field protected m:I

.field protected n:I

.field protected o:Z

.field protected p:Z

.field protected q:Z

.field protected r:Z

.field protected s:Z

.field protected t:Z

.field protected u:I

.field protected v:Z

.field protected w:Z

.field protected x:Z

.field protected y:Z

.field protected z:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 71
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/a/c;-><init>()V

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->l:Z

    .line 104
    iput v0, p0, Lcom/startapp/android/publish/ads/video/f;->m:I

    .line 105
    iput v0, p0, Lcom/startapp/android/publish/ads/video/f;->n:I

    .line 106
    iput v0, p0, Lcom/startapp/android/publish/ads/video/f;->I:I

    .line 107
    iput v0, p0, Lcom/startapp/android/publish/ads/video/f;->J:I

    .line 109
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->p:Z

    .line 110
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->q:Z

    .line 111
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->r:Z

    .line 112
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->s:Z

    .line 113
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->t:Z

    .line 114
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->K:Z

    .line 115
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/startapp/android/publish/ads/video/f;->L:Ljava/util/HashMap;

    .line 116
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/startapp/android/publish/ads/video/f;->M:Ljava/util/HashMap;

    const/4 v1, 0x1

    .line 117
    iput v1, p0, Lcom/startapp/android/publish/ads/video/f;->N:I

    .line 118
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->O:Z

    .line 119
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->P:Z

    .line 121
    iput v0, p0, Lcom/startapp/android/publish/ads/video/f;->u:I

    .line 122
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->v:Z

    .line 123
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->w:Z

    .line 124
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->x:Z

    .line 125
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->y:Z

    .line 126
    iput v0, p0, Lcom/startapp/android/publish/ads/video/f;->z:I

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->B:Ljava/lang/String;

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->C:Landroid/os/Handler;

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->D:Landroid/os/Handler;

    .line 132
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->E:Landroid/os/Handler;

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->F:Landroid/os/Handler;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->Q:Ljava/util/Map;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->R:Ljava/util/Map;

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .registers 10

    .line 978
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapp/android/publish/ads/video/f;->U:J

    .line 981
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->b()Landroid/app/Activity;

    move-result-object v0

    const/high16 v1, 0x57f00000

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->H:Landroid/widget/RelativeLayout;

    .line 982
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 985
    new-instance v2, Landroid/widget/VideoView;

    invoke-direct {v2, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/startapp/android/publish/ads/video/f;->j:Landroid/widget/VideoView;

    const/16 v3, 0x64

    .line 986
    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setId(I)V

    .line 988
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 992
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 995
    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    const v4, 0x1010287

    invoke-direct {v1, p1, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/startapp/android/publish/ads/video/f;->k:Landroid/widget/ProgressBar;

    const/4 v3, 0x4

    .line 996
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 997
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xe

    .line 1001
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0xf

    .line 1002
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1004
    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-direct {v6, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/startapp/android/publish/ads/video/f;->G:Landroid/widget/RelativeLayout;

    const v7, 0x57f00004

    .line 1005
    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 1006
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->b()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/startapp/android/publish/ads/video/f;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 1008
    iget-object v6, p0, Lcom/startapp/android/publish/ads/video/f;->G:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/startapp/android/publish/ads/video/f;->j:Landroid/widget/VideoView;

    invoke-virtual {v6, v7, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1009
    iget-object v2, p0, Lcom/startapp/android/publish/ads/video/f;->G:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/startapp/android/publish/ads/video/f;->H:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1010
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->G:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/startapp/android/publish/ads/video/f;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1012
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/AdsConstants;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 1013
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    .line 1014
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1015
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1016
    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f;->G:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/video/f;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1019
    :cond_9a
    iget-object p1, p0, Lcom/startapp/android/publish/ads/video/f;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/adinformation/b;->a()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1021
    iget-object p1, p0, Lcom/startapp/android/publish/ads/video/f;->G:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/startapp/android/publish/ads/video/f;)Lcom/b/a/a/a/b/a/a;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/startapp/android/publish/ads/video/f;->W:Lcom/b/a/a/a/b/a/a;

    return-object p0
.end method

.method private a(ILandroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 6

    .line 845
    iget v0, p0, Lcom/startapp/android/publish/ads/video/f;->n:I

    if-ge v0, p1, :cond_9

    sub-int/2addr p1, v0

    int-to-long v0, p1

    .line 846
    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 606
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-static {v1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/h;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 607
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/h;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 608
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/h;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 609
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {v1, p1}, Lcom/startapp/android/publish/adsCommon/Utils/h;->b(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const-string p1, "videoApi.setVideoFrame"

    .line 605
    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/ads/video/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/startapp/android/publish/ads/video/c/a/a;)V
    .registers 9

    const-string v0, "VideoMode"

    const/4 v1, 0x3

    const-string v2, "Sending internal video event"

    .line 1432
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 1433
    new-instance v0, Lcom/startapp/android/publish/ads/video/a/b;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getVideoTrackingDetails()Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;

    move-result-object v1

    .line 1434
    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->getInlineErrorTrackingUrls()[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    move-result-object v1

    new-instance v2, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;

    .line 1435
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->n()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/startapp/android/publish/ads/video/f;->I:I

    invoke-direct {p0, v4}, Lcom/startapp/android/publish/ads/video/f;->h(I)I

    move-result v4

    iget v5, p0, Lcom/startapp/android/publish/ads/video/f;->m:I

    iget-object v6, p0, Lcom/startapp/android/publish/ads/video/f;->B:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 1436
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getVideoUrl()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/startapp/android/publish/ads/video/f;->I:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/startapp/android/publish/ads/video/a/b;-><init>([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;Ljava/lang/String;I)V

    .line 1437
    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/ads/video/a/b;->a(Lcom/startapp/android/publish/ads/video/c/a/a;)Lcom/startapp/android/publish/ads/video/a/b;

    move-result-object p1

    const-string v0, "error"

    .line 1438
    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/ads/video/a/b;->a(Ljava/lang/String;)Lcom/startapp/android/publish/ads/video/a/b;

    move-result-object p1

    .line 1439
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/a/b;->a()Lcom/startapp/android/publish/ads/video/a/a;

    move-result-object p1

    .line 1440
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/startapp/android/publish/ads/video/h;->a(Landroid/content/Context;Lcom/startapp/android/publish/ads/video/a/a;)V

    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/ads/video/f;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/startapp/android/publish/ads/video/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;)V
    .registers 10

    .line 1418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending video clicked event with origin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 1419
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getVideoTrackingDetails()Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->getVideoClickTrackingUrls()[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    move-result-object v0

    new-instance v7, Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams;

    .line 1420
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->n()Ljava/lang/String;

    move-result-object v2

    iget v1, p0, Lcom/startapp/android/publish/ads/video/f;->I:I

    invoke-direct {p0, v1}, Lcom/startapp/android/publish/ads/video/f;->h(I)I

    move-result v3

    iget v4, p0, Lcom/startapp/android/publish/ads/video/f;->m:I

    iget-object v6, p0, Lcom/startapp/android/publish/ads/video/f;->B:Ljava/lang/String;

    move-object v1, v7

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams;-><init>(Ljava/lang/String;IILcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;Ljava/lang/String;)V

    iget p1, p0, Lcom/startapp/android/publish/ads/video/f;->I:I

    const-string v1, "clicked"

    .line 1419
    invoke-direct {p0, v0, v7, p1, v1}, Lcom/startapp/android/publish/ads/video/f;->a([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;ILjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;)V
    .registers 3

    .line 1053
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    if-eqz v0, :cond_18

    .line 1054
    invoke-interface {v0}, Lcom/startapp/android/publish/ads/video/b/c;->d()I

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/ads/video/f;->n:I

    iput v0, p0, Lcom/startapp/android/publish/ads/video/f;->I:I

    .line 1055
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {v0}, Lcom/startapp/android/publish/ads/video/b/c;->b()V

    .line 1056
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->W:Lcom/b/a/a/a/b/a/a;

    if-eqz v0, :cond_18

    .line 1057
    invoke-virtual {v0}, Lcom/b/a/a/a/b/a/a;->e()V

    .line 1060
    :cond_18
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/video/f;->c(Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;)V

    return-void
.end method

.method private a([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;ILjava/lang/String;)V
    .registers 7

    .line 1425
    new-instance v0, Lcom/startapp/android/publish/ads/video/a/b;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/startapp/android/publish/ads/video/a/b;-><init>([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;Ljava/lang/String;I)V

    .line 1426
    invoke-virtual {v0, p4}, Lcom/startapp/android/publish/ads/video/a/b;->a(Ljava/lang/String;)Lcom/startapp/android/publish/ads/video/a/b;

    move-result-object p1

    .line 1427
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/a/b;->a()Lcom/startapp/android/publish/ads/video/a/a;

    move-result-object p1

    .line 1428
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->b()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/startapp/android/publish/ads/video/h;->a(Landroid/content/Context;Lcom/startapp/android/publish/ads/video/a/a;)V

    return-void
.end method

.method private aA()V
    .registers 7

    const-string v0, "VideoMode"

    const/4 v1, 0x3

    const-string v2, "Sending rewarded event"

    .line 1367
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 1368
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getVideoTrackingDetails()Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->getVideoRewardedUrls()[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    move-result-object v0

    new-instance v1, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;

    .line 1369
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapp/android/publish/adsCommon/n;->d()I

    move-result v3

    iget v4, p0, Lcom/startapp/android/publish/ads/video/f;->m:I

    iget-object v5, p0, Lcom/startapp/android/publish/ads/video/f;->B:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 1370
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/n;->d()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/startapp/android/publish/ads/video/f;->e(I)I

    move-result v2

    const-string v3, "rewarded"

    .line 1368
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/startapp/android/publish/ads/video/f;->a([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;ILjava/lang/String;)V

    return-void
.end method

.method private aB()V
    .registers 7

    const-string v0, "VideoMode"

    const/4 v1, 0x3

    const-string v2, "Sending skip event"

    .line 1385
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 1386
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getVideoTrackingDetails()Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->getVideoSkippedUrls()[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    move-result-object v0

    new-instance v1, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;

    .line 1387
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->n()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/startapp/android/publish/ads/video/f;->I:I

    invoke-direct {p0, v3}, Lcom/startapp/android/publish/ads/video/f;->h(I)I

    move-result v3

    iget v4, p0, Lcom/startapp/android/publish/ads/video/f;->m:I

    iget-object v5, p0, Lcom/startapp/android/publish/ads/video/f;->B:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    iget v2, p0, Lcom/startapp/android/publish/ads/video/f;->I:I

    const-string v3, "skipped"

    .line 1386
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/startapp/android/publish/ads/video/f;->a([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;ILjava/lang/String;)V

    return-void
.end method

.method private aC()V
    .registers 7

    const-string v0, "VideoMode"

    const/4 v1, 0x3

    const-string v2, "Sending postroll closed event"

    .line 1405
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 1406
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getVideoTrackingDetails()Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->getVideoPostRollClosedUrls()[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    move-result-object v0

    new-instance v1, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;

    .line 1407
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->n()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/startapp/android/publish/ads/video/f;->I:I

    invoke-direct {p0, v3}, Lcom/startapp/android/publish/ads/video/f;->h(I)I

    move-result v3

    iget v4, p0, Lcom/startapp/android/publish/ads/video/f;->m:I

    iget-object v5, p0, Lcom/startapp/android/publish/ads/video/f;->B:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    iget v2, p0, Lcom/startapp/android/publish/ads/video/f;->I:I

    const-string v3, "postrollClosed"

    .line 1406
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/startapp/android/publish/ads/video/f;->a([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;ILjava/lang/String;)V

    return-void
.end method

.method private aD()V
    .registers 7

    const-string v0, "VideoMode"

    const/4 v1, 0x3

    const-string v2, "Sending video closed event"

    .line 1411
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 1412
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getVideoTrackingDetails()Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->getVideoClosedUrls()[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    move-result-object v0

    new-instance v1, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;

    .line 1413
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->n()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {v3}, Lcom/startapp/android/publish/ads/video/b/c;->d()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/startapp/android/publish/ads/video/f;->h(I)I

    move-result v3

    iget v4, p0, Lcom/startapp/android/publish/ads/video/f;->m:I

    iget-object v5, p0, Lcom/startapp/android/publish/ads/video/f;->B:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v2, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    .line 1414
    invoke-interface {v2}, Lcom/startapp/android/publish/ads/video/b/c;->d()I

    move-result v2

    const-string v3, "closed"

    .line 1412
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/startapp/android/publish/ads/video/f;->a([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;ILjava/lang/String;)V

    return-void
.end method

.method private aa()V
    .registers 4

    .line 258
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->j:Landroid/widget/VideoView;

    if-nez v0, :cond_f

    .line 259
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/ads/video/f;->a(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    .line 263
    :cond_f
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    if-nez v0, :cond_1c

    .line 264
    new-instance v0, Lcom/startapp/android/publish/ads/video/b/b;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f;->j:Landroid/widget/VideoView;

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/ads/video/b/b;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    :cond_1c
    const/4 v0, 0x0

    .line 267
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->q:Z

    .line 268
    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f;->G:Landroid/widget/RelativeLayout;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 270
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->H()V

    .line 272
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->S()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 273
    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/adinformation/b;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->j:Landroid/widget/VideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    goto :goto_4d

    .line 275
    :cond_3f
    iget v0, p0, Lcom/startapp/android/publish/ads/video/f;->n:I

    if-eqz v0, :cond_4d

    .line 276
    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {v1, v0}, Lcom/startapp/android/publish/ads/video/b/c;->a(I)V

    .line 277
    sget-object v0, Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;->EXTERNAL:Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/ads/video/f;->b(Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;)V

    .line 280
    :cond_4d
    :goto_4d
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    new-instance v1, Lcom/startapp/android/publish/ads/video/f$1;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/ads/video/f$1;-><init>(Lcom/startapp/android/publish/ads/video/f;)V

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/ads/video/b/c;->a(Lcom/startapp/android/publish/ads/video/b/c$f;)V

    .line 293
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    new-instance v1, Lcom/startapp/android/publish/ads/video/f$12;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/ads/video/f$12;-><init>(Lcom/startapp/android/publish/ads/video/f;)V

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/ads/video/b/c;->a(Lcom/startapp/android/publish/ads/video/b/c$d;)V

    .line 305
    new-instance v0, Lcom/startapp/android/publish/ads/video/f$14;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/ads/video/f$14;-><init>(Lcom/startapp/android/publish/ads/video/f;)V

    .line 332
    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    new-instance v2, Lcom/startapp/android/publish/ads/video/f$15;

    invoke-direct {v2, p0}, Lcom/startapp/android/publish/ads/video/f$15;-><init>(Lcom/startapp/android/publish/ads/video/f;)V

    invoke-interface {v1, v2}, Lcom/startapp/android/publish/ads/video/b/c;->a(Lcom/startapp/android/publish/ads/video/b/c$e;)V

    .line 353
    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    new-instance v2, Lcom/startapp/android/publish/ads/video/f$16;

    invoke-direct {v2, p0}, Lcom/startapp/android/publish/ads/video/f$16;-><init>(Lcom/startapp/android/publish/ads/video/f;)V

    invoke-interface {v1, v2}, Lcom/startapp/android/publish/ads/video/b/c;->a(Lcom/startapp/android/publish/ads/video/b/c$b;)V

    .line 361
    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {v1, v0}, Lcom/startapp/android/publish/ads/video/b/c;->a(Lcom/startapp/android/publish/ads/video/b/c$c;)V

    .line 363
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    new-instance v1, Lcom/startapp/android/publish/ads/video/f$17;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/ads/video/f$17;-><init>(Lcom/startapp/android/publish/ads/video/f;)V

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/ads/video/b/c;->a(Lcom/startapp/android/publish/ads/video/b/c$a;)V

    .line 370
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->j:Landroid/widget/VideoView;

    new-instance v1, Lcom/startapp/android/publish/ads/video/f$18;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/ads/video/f$18;-><init>(Lcom/startapp/android/publish/ads/video/f;)V

    invoke-static {v0, v1}, Lcom/startapp/common/a/c;->a(Landroid/view/View;Lcom/startapp/common/a/c$a;)V

    return-void
.end method

.method private ab()V
    .registers 3

    .line 541
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->isVideoMuted()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/n;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "muted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    :goto_22
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->l:Z

    return-void
.end method

.method private ac()V
    .registers 5

    .line 545
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "back"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 547
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/n;->a()Lcom/startapp/android/publish/adsCommon/n$a;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/adsCommon/n$a;->d:Lcom/startapp/android/publish/adsCommon/n$a;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/adsCommon/n$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_26

    .line 548
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/video/f;->O:Z

    .line 549
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/video/f;->P:Z

    goto :goto_76

    .line 550
    :cond_26
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/n;->a()Lcom/startapp/android/publish/adsCommon/n$a;

    move-result-object v0

    sget-object v2, Lcom/startapp/android/publish/adsCommon/n$a;->b:Lcom/startapp/android/publish/adsCommon/n$a;

    invoke-virtual {v0, v2}, Lcom/startapp/android/publish/adsCommon/n$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_40

    .line 551
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/video/f;->O:Z

    .line 552
    iput-boolean v2, p0, Lcom/startapp/android/publish/ads/video/f;->P:Z

    goto :goto_76

    .line 553
    :cond_40
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/n;->a()Lcom/startapp/android/publish/adsCommon/n$a;

    move-result-object v0

    sget-object v3, Lcom/startapp/android/publish/adsCommon/n$a;->c:Lcom/startapp/android/publish/adsCommon/n$a;

    invoke-virtual {v0, v3}, Lcom/startapp/android/publish/adsCommon/n$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 554
    iput-boolean v2, p0, Lcom/startapp/android/publish/ads/video/f;->O:Z

    .line 555
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/video/f;->P:Z

    goto :goto_76

    .line 556
    :cond_59
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/n;->a()Lcom/startapp/android/publish/adsCommon/n$a;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/adsCommon/n$a;->a:Lcom/startapp/android/publish/adsCommon/n$a;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/adsCommon/n$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 557
    iput-boolean v2, p0, Lcom/startapp/android/publish/ads/video/f;->O:Z

    .line 558
    iput-boolean v2, p0, Lcom/startapp/android/publish/ads/video/f;->P:Z

    goto :goto_76

    .line 560
    :cond_72
    iput-boolean v2, p0, Lcom/startapp/android/publish/ads/video/f;->O:Z

    .line 561
    iput-boolean v2, p0, Lcom/startapp/android/publish/ads/video/f;->P:Z

    :cond_76
    :goto_76
    return-void
.end method

.method private ad()J
    .registers 6

    .line 567
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/startapp/android/publish/ads/video/f;->S:J

    sub-long/2addr v0, v2

    .line 569
    iget v2, p0, Lcom/startapp/android/publish/ads/video/f;->n:I

    if-nez v2, :cond_1d

    iget v2, p0, Lcom/startapp/android/publish/ads/video/f;->m:I

    if-nez v2, :cond_1d

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1d

    sub-long/2addr v2, v0

    const-wide/16 v0, 0xc8

    .line 571
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_1f

    :cond_1d
    const-wide/16 v0, 0x0

    :goto_1f
    return-wide v0
.end method

.method private ae()V
    .registers 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 577
    iget-object v2, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "videoApi.setReplayEnabled"

    invoke-virtual {p0, v2, v1}, Lcom/startapp/android/publish/ads/video/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v0, [Ljava/lang/Object;

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/startapp/android/publish/ads/video/f$a;->b:Lcom/startapp/android/publish/ads/video/f$a;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v4

    invoke-virtual {v4}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getPostRollType()Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "videoApi.setMode"

    invoke-virtual {p0, v2, v1}, Lcom/startapp/android/publish/ads/video/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v0, [Ljava/lang/Object;

    .line 579
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "videoApi.setCloseable"

    invoke-virtual {p0, v0, v1}, Lcom/startapp/android/publish/ads/video/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private af()V
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 583
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->isClickable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "videoApi.setClickableVideo"

    invoke-virtual {p0, v2, v1}, Lcom/startapp/android/publish/ads/video/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v0, [Ljava/lang/Object;

    .line 584
    sget-object v2, Lcom/startapp/android/publish/ads/video/f$a;->a:Lcom/startapp/android/publish/ads/video/f$a;

    invoke-virtual {v2}, Lcom/startapp/android/publish/ads/video/f$a;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "videoApi.setMode"

    invoke-virtual {p0, v2, v1}, Lcom/startapp/android/publish/ads/video/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v0, [Ljava/lang/Object;

    .line 585
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->isCloseable()Z

    move-result v2

    if-nez v2, :cond_39

    iget-boolean v2, p0, Lcom/startapp/android/publish/ads/video/f;->P:Z

    if-eqz v2, :cond_37

    goto :goto_39

    :cond_37
    const/4 v2, 0x0

    goto :goto_3a

    :cond_39
    :goto_39
    const/4 v2, 0x1

    :goto_3a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "videoApi.setCloseable"

    invoke-virtual {p0, v2, v1}, Lcom/startapp/android/publish/ads/video/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 588
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->aw()Z

    move-result v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 589
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "videoApi.setSkippable"

    invoke-virtual {p0, v1, v0}, Lcom/startapp/android/publish/ads/video/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private ag()V
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 593
    iget-object v2, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {v2}, Lcom/startapp/android/publish/ads/video/b/c;->e()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "videoApi.setVideoDuration"

    invoke-virtual {p0, v2, v1}, Lcom/startapp/android/publish/ads/video/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 594
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->P()I

    .line 595
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->aj()V

    new-array v0, v0, [Ljava/lang/Object;

    .line 596
    iget v1, p0, Lcom/startapp/android/publish/ads/video/f;->n:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "videoApi.setVideoCurrentPosition"

    invoke-virtual {p0, v1, v0}, Lcom/startapp/android/publish/ads/video/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private ah()V
    .registers 3

    .line 613
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->D:Landroid/os/Handler;

    new-instance v1, Lcom/startapp/android/publish/ads/video/f$3;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/ads/video/f$3;-><init>(Lcom/startapp/android/publish/ads/video/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private ai()V
    .registers 3

    .line 638
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->aj()V

    .line 640
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->D:Landroid/os/Handler;

    new-instance v1, Lcom/startapp/android/publish/ads/video/f$4;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/ads/video/f$4;-><init>(Lcom/startapp/android/publish/ads/video/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private aj()V
    .registers 4

    .line 675
    iget v0, p0, Lcom/startapp/android/publish/ads/video/f;->n:I

    add-int/lit8 v0, v0, 0x32

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/video/f;->d(I)I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 676
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "videoApi.setSkipTimer"

    invoke-virtual {p0, v0, v1}, Lcom/startapp/android/publish/ads/video/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private ak()I
    .registers 3

    .line 681
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {v0}, Lcom/startapp/android/publish/ads/video/b/c;->d()I

    move-result v0

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {v1}, Lcom/startapp/android/publish/ads/video/b/c;->e()I

    move-result v1

    if-ne v0, v1, :cond_1b

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->S()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 682
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {v0}, Lcom/startapp/android/publish/ads/video/b/c;->e()I

    move-result v0

    return v0

    .line 684
    :cond_1b
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {v0}, Lcom/startapp/android/publish/ads/video/b/c;->e()I

    move-result v0

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {v1}, Lcom/startapp/android/publish/ads/video/b/c;->d()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private al()V
    .registers 2

    const/4 v0, -0x1

    .line 774
    iput v0, p0, Lcom/startapp/android/publish/ads/video/f;->n:I

    return-void
.end method

.method private am()V
    .registers 2

    .line 786
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {v0}, Lcom/startapp/android/publish/ads/video/b/c;->e()I

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/ads/video/f;->J:I

    .line 787
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->an()V

    .line 788
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->ao()V

    return-void
.end method

.method private an()V
    .registers 6

    .line 792
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->Q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 793
    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/ads/video/f;->e(I)I

    move-result v2

    iget-object v3, p0, Lcom/startapp/android/publish/ads/video/f;->C:Landroid/os/Handler;

    new-instance v4, Lcom/startapp/android/publish/ads/video/f$6;

    invoke-direct {v4, p0, v1}, Lcom/startapp/android/publish/ads/video/f$6;-><init>(Lcom/startapp/android/publish/ads/video/f;I)V

    invoke-direct {p0, v2, v3, v4}, Lcom/startapp/android/publish/ads/video/f;->a(ILandroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_a

    :cond_29
    return-void
.end method

.method private ao()V
    .registers 5

    .line 809
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->R:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 810
    iget-object v2, p0, Lcom/startapp/android/publish/ads/video/f;->C:Landroid/os/Handler;

    new-instance v3, Lcom/startapp/android/publish/ads/video/f$7;

    invoke-direct {v3, p0, v1}, Lcom/startapp/android/publish/ads/video/f$7;-><init>(Lcom/startapp/android/publish/ads/video/f;I)V

    invoke-direct {p0, v1, v2, v3}, Lcom/startapp/android/publish/ads/video/f;->a(ILandroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_a

    :cond_25
    return-void
.end method

.method private ap()V
    .registers 4

    .line 826
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->v:Z

    if-nez v0, :cond_1e

    .line 827
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/n;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/video/f;->e(I)I

    move-result v0

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f;->E:Landroid/os/Handler;

    new-instance v2, Lcom/startapp/android/publish/ads/video/f$8;

    invoke-direct {v2, p0}, Lcom/startapp/android/publish/ads/video/f$8;-><init>(Lcom/startapp/android/publish/ads/video/f;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/startapp/android/publish/ads/video/f;->a(ILandroid/os/Handler;Ljava/lang/Runnable;)V

    :cond_1e
    return-void
.end method

.method private aq()Z
    .registers 3

    .line 869
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->w()Lcom/startapp/android/publish/adsCommon/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/Ad;->getType()Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/adsCommon/Ad$AdType;->REWARDED_VIDEO:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private ar()Ljava/lang/Runnable;
    .registers 2

    .line 936
    new-instance v0, Lcom/startapp/android/publish/ads/video/f$9;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/ads/video/f$9;-><init>(Lcom/startapp/android/publish/ads/video/f;)V

    return-object v0
.end method

.method private as()Ljava/lang/Runnable;
    .registers 2

    .line 947
    new-instance v0, Lcom/startapp/android/publish/ads/video/f$10;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/ads/video/f$10;-><init>(Lcom/startapp/android/publish/ads/video/f;)V

    return-object v0
.end method

.method private at()Ljava/lang/Runnable;
    .registers 2

    .line 964
    new-instance v0, Lcom/startapp/android/publish/ads/video/f$11;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/ads/video/f$11;-><init>(Lcom/startapp/android/publish/ads/video/f;)V

    return-object v0
.end method

.method private au()V
    .registers 4

    .line 1121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.startapp.android.ShowFailedDisplayBroadcastListener"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1122
    sget-object v1, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->VIDEO_ERROR:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    const-string v2, "showFailedReason"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1123
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/startapp/common/b;->a(Landroid/content/Context;)Lcom/startapp/common/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/startapp/common/b;->a(Landroid/content/Intent;)Z

    const/4 v0, 0x1

    .line 1124
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->s:Z

    return-void
.end method

.method private av()V
    .registers 4

    const-string v0, "VideoMode"

    const/4 v1, 0x3

    const-string v2, "Releasing video player"

    .line 1139
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 1140
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    if-eqz v0, :cond_12

    .line 1141
    invoke-interface {v0}, Lcom/startapp/android/publish/ads/video/b/c;->g()V

    const/4 v0, 0x0

    .line 1142
    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    :cond_12
    return-void
.end method

.method private aw()Z
    .registers 2

    .line 1165
    iget v0, p0, Lcom/startapp/android/publish/ads/video/f;->m:I

    if-gtz v0, :cond_15

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->isSkippable()Z

    move-result v0

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->O:Z

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method private ax()Ljava/lang/String;
    .registers 4

    .line 1178
    :try_start_0
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->h()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1179
    array-length v1, v0

    if-lez v1, :cond_11

    const/4 v1, 0x0

    .line 1180
    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/startapp/android/publish/adsCommon/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    const-string v0, "VideoMode"

    const/4 v1, 0x5

    const-string v2, "dParam is not available."

    .line 1183
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_19

    :catch_19
    const-string v0, ""

    return-object v0
.end method

.method private ay()V
    .registers 9

    .line 1267
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getVideoTrackingDetails()Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->getFractionTrackingUrls()[Lcom/startapp/android/publish/ads/video/tracking/FractionTrackingLink;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    .line 1269
    array-length v2, v0

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_3f

    aget-object v4, v0, v3

    .line 1270
    iget-object v5, p0, Lcom/startapp/android/publish/ads/video/f;->Q:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/startapp/android/publish/ads/video/tracking/FractionTrackingLink;->getFraction()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_39

    .line 1272
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1273
    iget-object v6, p0, Lcom/startapp/android/publish/ads/video/f;->Q:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/startapp/android/publish/ads/video/tracking/FractionTrackingLink;->getFraction()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    :cond_39
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1279
    :cond_3f
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getVideoTrackingDetails()Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->getAbsoluteTrackingUrls()[Lcom/startapp/android/publish/ads/video/tracking/AbsoluteTrackingLink;

    move-result-object v0

    if-eqz v0, :cond_7c

    .line 1281
    array-length v2, v0

    :goto_4e
    if-ge v1, v2, :cond_7c

    aget-object v3, v0, v1

    .line 1282
    iget-object v4, p0, Lcom/startapp/android/publish/ads/video/f;->R:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/startapp/android/publish/ads/video/tracking/AbsoluteTrackingLink;->getVideoOffsetMillis()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_76

    .line 1284
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1285
    iget-object v5, p0, Lcom/startapp/android/publish/ads/video/f;->R:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/startapp/android/publish/ads/video/tracking/AbsoluteTrackingLink;->getVideoOffsetMillis()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    :cond_76
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    :cond_7c
    return-void
.end method

.method private az()V
    .registers 7

    const-string v0, "VideoMode"

    const/4 v1, 0x3

    const-string v2, "Sending postroll impression event"

    .line 1360
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 1361
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getVideoTrackingDetails()Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->getVideoPostRollImpressionUrls()[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    move-result-object v0

    new-instance v1, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;

    .line 1362
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->n()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/startapp/android/publish/ads/video/f;->I:I

    .line 1363
    invoke-direct {p0, v3}, Lcom/startapp/android/publish/ads/video/f;->h(I)I

    move-result v3

    iget v4, p0, Lcom/startapp/android/publish/ads/video/f;->m:I

    iget-object v5, p0, Lcom/startapp/android/publish/ads/video/f;->B:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    iget v2, p0, Lcom/startapp/android/publish/ads/video/f;->I:I

    const-string v3, "postrollImression"

    .line 1361
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/startapp/android/publish/ads/video/f;->a([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;ILjava/lang/String;)V

    return-void
.end method

.method private b(Landroid/content/Context;)Landroid/view/View;
    .registers 5

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1026
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x1000000

    .line 1029
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 1030
    invoke-static {v1, p1}, Lcom/startapp/common/a/c;->a(Landroid/view/View;F)V

    const p1, -0x777778

    .line 1031
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x0

    .line 1032
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1033
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method static synthetic b(Lcom/startapp/android/publish/ads/video/f;)Ljava/lang/String;
    .registers 1

    .line 71
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->ax()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/startapp/android/publish/ads/video/f;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/startapp/android/publish/ads/video/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private b(Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;)V
    .registers 2

    .line 1064
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/video/f;->d(Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;)V

    .line 1065
    iget p1, p0, Lcom/startapp/android/publish/ads/video/f;->N:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/startapp/android/publish/ads/video/f;->N:I

    return-void
.end method

.method static synthetic c(Lcom/startapp/android/publish/ads/video/f;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/startapp/android/publish/ads/video/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private c(Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;)V
    .registers 11

    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending pause event with origin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 1392
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getVideoTrackingDetails()Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->getVideoPausedUrls()[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    move-result-object v0

    new-instance v8, Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams;

    .line 1393
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->n()Ljava/lang/String;

    move-result-object v2

    iget v1, p0, Lcom/startapp/android/publish/ads/video/f;->I:I

    .line 1394
    invoke-direct {p0, v1}, Lcom/startapp/android/publish/ads/video/f;->h(I)I

    move-result v3

    iget v4, p0, Lcom/startapp/android/publish/ads/video/f;->m:I

    iget v5, p0, Lcom/startapp/android/publish/ads/video/f;->N:I

    iget-object v7, p0, Lcom/startapp/android/publish/ads/video/f;->B:Ljava/lang/String;

    move-object v1, v8

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams;-><init>(Ljava/lang/String;IIILcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;Ljava/lang/String;)V

    iget p1, p0, Lcom/startapp/android/publish/ads/video/f;->I:I

    const-string v1, "paused"

    .line 1392
    invoke-direct {p0, v0, v8, p1, v1}, Lcom/startapp/android/publish/ads/video/f;->a([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;ILjava/lang/String;)V

    return-void
.end method

.method private d(Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;)V
    .registers 11

    .line 1398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending resume event with pause origin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 1399
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getVideoTrackingDetails()Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->getVideoResumedUrls()[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    move-result-object v0

    new-instance v8, Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams;

    .line 1400
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->n()Ljava/lang/String;

    move-result-object v2

    iget v1, p0, Lcom/startapp/android/publish/ads/video/f;->I:I

    .line 1401
    invoke-direct {p0, v1}, Lcom/startapp/android/publish/ads/video/f;->h(I)I

    move-result v3

    iget v4, p0, Lcom/startapp/android/publish/ads/video/f;->m:I

    iget v5, p0, Lcom/startapp/android/publish/ads/video/f;->N:I

    iget-object v7, p0, Lcom/startapp/android/publish/ads/video/f;->B:Ljava/lang/String;

    move-object v1, v8

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams;-><init>(Ljava/lang/String;IIILcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;Ljava/lang/String;)V

    iget p1, p0, Lcom/startapp/android/publish/ads/video/f;->I:I

    const-string v1, "resumed"

    .line 1399
    invoke-direct {p0, v0, v8, p1, v1}, Lcom/startapp/android/publish/ads/video/f;->a([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;ILjava/lang/String;)V

    return-void
.end method

.method private h(I)I
    .registers 3

    .line 1169
    iget v0, p0, Lcom/startapp/android/publish/ads/video/f;->J:I

    if-lez v0, :cond_8

    mul-int/lit8 p1, p1, 0x64

    .line 1170
    div-int/2addr p1, v0

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected A()V
    .registers 3

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->p:Z

    .line 192
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->q:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->X()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 193
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->G()V

    goto :goto_1c

    .line 194
    :cond_11
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->S()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 195
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->d:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/ads/video/f;->a(Landroid/view/View;)V

    .line 198
    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->Y()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 199
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->K()V

    .line 202
    :cond_25
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->S()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 203
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->ae()V

    .line 206
    :cond_2e
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v0

    .line 207
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/common/metaData/MetaData;->isOmsdkEnabled()Z

    move-result v1

    if-eqz v1, :cond_a2

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f;->e:Lcom/b/a/a/a/b/b;

    if-nez v1, :cond_a2

    if-eqz v0, :cond_a2

    .line 208
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getAdVerifications()Lcom/startapp/android/publish/omsdk/AdVerification;

    move-result-object v1

    if-eqz v1, :cond_a2

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getAdVerifications()Lcom/startapp/android/publish/omsdk/AdVerification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/omsdk/AdVerification;->getAdVerification()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a2

    .line 210
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getAdVerifications()Lcom/startapp/android/publish/omsdk/AdVerification;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f;->d:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/startapp/android/publish/omsdk/a;->a(Landroid/content/Context;Lcom/startapp/android/publish/omsdk/AdVerification;)Lcom/b/a/a/a/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->e:Lcom/b/a/a/a/b/b;

    .line 212
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->e:Lcom/b/a/a/a/b/b;

    if-eqz v0, :cond_a2

    .line 213
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->e:Lcom/b/a/a/a/b/b;

    invoke-static {v0}, Lcom/b/a/a/a/b/a/a;->a(Lcom/b/a/a/a/b/b;)Lcom/b/a/a/a/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->W:Lcom/b/a/a/a/b/a/a;

    .line 215
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/adinformation/b;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 217
    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f;->e:Lcom/b/a/a/a/b/b;

    invoke-virtual {v1, v0}, Lcom/b/a/a/a/b/b;->b(Landroid/view/View;)V

    .line 219
    :cond_7f
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->e:Lcom/b/a/a/a/b/b;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/b/b;->b(Landroid/view/View;)V

    .line 220
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->e:Lcom/b/a/a/a/b/b;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f;->H:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/b/b;->b(Landroid/view/View;)V

    .line 222
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->e:Lcom/b/a/a/a/b/b;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f;->j:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/b/b;->a(Landroid/view/View;)V

    .line 223
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->e:Lcom/b/a/a/a/b/b;

    invoke-virtual {v0}, Lcom/b/a/a/a/b/b;->a()V

    .line 229
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->e:Lcom/b/a/a/a/b/b;

    invoke-static {v0}, Lcom/b/a/a/a/b/a;->a(Lcom/b/a/a/a/b/b;)Lcom/b/a/a/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/a/b/a;->a()V

    :cond_a2
    return-void
.end method

.method protected B()V
    .registers 4

    .line 1222
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->s:Z

    if-nez v0, :cond_1a

    .line 1224
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->S()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->j:Landroid/widget/VideoView;

    if-nez v0, :cond_f

    goto :goto_13

    .line 1231
    :cond_f
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->aD()V

    goto :goto_22

    .line 1225
    :cond_13
    :goto_13
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->aC()V

    .line 1226
    invoke-super {p0}, Lcom/startapp/android/publish/ads/a/c;->B()V

    goto :goto_22

    :cond_1a
    const/4 v0, 0x3

    const-string v1, "VideoMode"

    const-string v2, "Not sending close events due to media player error"

    .line 1234
    invoke-static {v1, v0, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_22
    return-void
.end method

.method protected D()Lcom/startapp/android/publish/adsCommon/d/b;
    .registers 6

    .line 1294
    new-instance v0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->n()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/startapp/android/publish/ads/video/f;->m:I

    iget-object v3, p0, Lcom/startapp/android/publish/ads/video/f;->B:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    return-object v0
.end method

.method protected E()Ljava/lang/String;
    .registers 5

    .line 1241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapp/android/publish/ads/video/f;->V:J

    .line 1242
    iget-wide v2, p0, Lcom/startapp/android/publish/ads/video/f;->U:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    .line 1243
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected F()J
    .registers 4

    .line 1300
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->o()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1301
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->o()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    .line 1305
    :cond_15
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/common/metaData/MetaData;->getIABVideoImpressionDelayInSeconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected G()V
    .registers 2

    .line 236
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->r:Z

    if-eqz v0, :cond_12

    .line 237
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->j:Landroid/widget/VideoView;

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/ads/video/f;->a(Landroid/view/View;)V

    .line 238
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->S()Z

    move-result v0

    if-nez v0, :cond_12

    .line 239
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->af()V

    :cond_12
    return-void
.end method

.method protected H()V
    .registers 7

    .line 384
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/n;->i()Z

    move-result v0

    .line 385
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getLocalVideoPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "VideoMode"

    const/4 v4, 0x1

    if-eqz v1, :cond_43

    .line 387
    iget-object v5, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {v5, v1}, Lcom/startapp/android/publish/ads/video/b/c;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_69

    .line 388
    invoke-static {}, Lcom/startapp/android/publish/ads/video/c;->a()Lcom/startapp/android/publish/ads/video/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/ads/video/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    const-string v0, "progressive video from local file"

    .line 389
    invoke-static {v3, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 390
    iput-boolean v4, p0, Lcom/startapp/android/publish/ads/video/f;->v:Z

    .line 391
    iput-boolean v4, p0, Lcom/startapp/android/publish/ads/video/f;->y:Z

    .line 392
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/n;->k()I

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/ads/video/f;->u:I

    goto :goto_69

    :cond_43
    if-eqz v0, :cond_64

    const-string v0, "progressive video from url"

    .line 397
    invoke-static {v3, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-static {}, Lcom/startapp/android/publish/ads/video/c;->a()Lcom/startapp/android/publish/ads/video/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/ads/video/c;->a(Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {v1, v0}, Lcom/startapp/android/publish/ads/video/b/c;->a(Ljava/lang/String;)V

    .line 401
    iput-boolean v4, p0, Lcom/startapp/android/publish/ads/video/f;->v:Z

    .line 402
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->L()V

    goto :goto_69

    .line 404
    :cond_64
    sget-object v0, Lcom/startapp/android/publish/ads/video/f$c;->c:Lcom/startapp/android/publish/ads/video/f$c;

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/video/f;->a(Lcom/startapp/android/publish/ads/video/f$c;)V

    .line 407
    :cond_69
    :goto_69
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->B:Ljava/lang/String;

    if-nez v0, :cond_78

    .line 408
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->v:Z

    if-eqz v0, :cond_74

    const-string v0, "2"

    goto :goto_76

    :cond_74
    const-string v0, "1"

    :goto_76
    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->B:Ljava/lang/String;

    :cond_78
    return-void
.end method

.method protected I()V
    .registers 4

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "progressive video resumed, buffered percent: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/startapp/android/publish/ads/video/f;->u:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {v0}, Lcom/startapp/android/publish/ads/video/b/c;->a()V

    .line 415
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->M()V

    return-void
.end method

.method protected J()V
    .registers 4

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "progressive video paused, buffered percent: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/startapp/android/publish/ads/video/f;->u:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {v0}, Lcom/startapp/android/publish/ads/video/b/c;->b()V

    .line 421
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->L()V

    return-void
.end method

.method protected K()V
    .registers 5

    const/4 v0, 0x1

    .line 425
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->x:Z

    .line 426
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->ag()V

    .line 427
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->S()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 428
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {v0}, Lcom/startapp/android/publish/ads/video/b/c;->b()V

    goto :goto_4c

    .line 433
    :cond_12
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/startapp/android/publish/ads/video/f$19;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/ads/video/f$19;-><init>(Lcom/startapp/android/publish/ads/video/f;)V

    .line 451
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->ad()J

    move-result-wide v2

    .line 433
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 452
    iget v0, p0, Lcom/startapp/android/publish/ads/video/f;->n:I

    if-nez v0, :cond_33

    .line 455
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->C:Landroid/os/Handler;

    new-instance v1, Lcom/startapp/android/publish/ads/video/f$20;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/ads/video/f$20;-><init>(Lcom/startapp/android/publish/ads/video/f;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 480
    :cond_33
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->am()V

    .line 481
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->ap()V

    .line 482
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->ah()V

    .line 483
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->ai()V

    .line 484
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/adinformation/b;->a()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 485
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->W()V

    :goto_4c
    return-void
.end method

.method protected L()V
    .registers 5

    .line 490
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->N()Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    .line 491
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->t:Z

    .line 492
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->F:Landroid/os/Handler;

    new-instance v1, Lcom/startapp/android/publish/ads/video/f$2;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/ads/video/f$2;-><init>(Lcom/startapp/android/publish/ads/video/f;)V

    .line 521
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/n;->f()J

    move-result-wide v2

    .line 492
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1f
    return-void
.end method

.method protected M()V
    .registers 3

    .line 527
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->F:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 528
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->N()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 529
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->k:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->W:Lcom/b/a/a/a/b/a/a;

    if-eqz v0, :cond_1a

    .line 531
    invoke-virtual {v0}, Lcom/b/a/a/a/b/a/a;->g()V

    :cond_1a
    return-void
.end method

.method protected N()Z
    .registers 2

    .line 537
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->k:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected O()V
    .registers 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 600
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v4, "videoApi.setVideoCurrentPosition"

    invoke-virtual {p0, v4, v1}, Lcom/startapp/android/publish/ads/video/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v2

    const-string v1, "videoApi.setSkipTimer"

    .line 601
    invoke-virtual {p0, v1, v0}, Lcom/startapp/android/publish/ads/video/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected P()I
    .registers 5

    .line 625
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->ak()I

    move-result v0

    .line 626
    div-int/lit16 v1, v0, 0x3e8

    if-lez v1, :cond_10

    .line 627
    rem-int/lit16 v2, v0, 0x3e8

    const/16 v3, 0x64

    if-ge v2, v3, :cond_10

    add-int/lit8 v1, v1, -0x1

    :cond_10
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 630
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "videoApi.setVideoRemainingTimer"

    invoke-virtual {p0, v1, v2}, Lcom/startapp/android/publish/ads/video/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method protected Q()J
    .registers 3

    .line 696
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {v0}, Lcom/startapp/android/publish/ads/video/b/c;->d()I

    move-result v0

    rem-int/lit16 v0, v0, 0x3e8

    rsub-int v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method

.method protected R()V
    .registers 2

    const/4 v0, 0x0

    .line 778
    iput v0, p0, Lcom/startapp/android/publish/ads/video/f;->n:I

    return-void
.end method

.method protected S()Z
    .registers 3

    .line 782
    iget v0, p0, Lcom/startapp/android/publish/ads/video/f;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method protected T()V
    .registers 5

    .line 855
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->aq()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 856
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->K:Z

    if-nez v0, :cond_36

    iget v0, p0, Lcom/startapp/android/publish/ads/video/f;->m:I

    if-nez v0, :cond_36

    const/4 v0, 0x1

    .line 857
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->K:Z

    const-string v0, "VideoMode"

    const/4 v1, 0x3

    const-string v2, "Sending rewarded video completion broadcast."

    .line 858
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 859
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.startapp.android.OnVideoCompleted"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 860
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->b()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/startapp/common/b;->a(Landroid/content/Context;)Lcom/startapp/common/b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/startapp/common/b;->a(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, "Rewarded video completion broadcast sent successfully."

    .line 861
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 863
    :cond_33
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->aA()V

    :cond_36
    return-void
.end method

.method protected U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;
    .registers 2

    .line 887
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->w()Lcom/startapp/android/publish/adsCommon/Ad;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/ads/video/e;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/e;->d()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v0

    return-object v0
.end method

.method protected V()V
    .registers 2

    .line 956
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->N()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 957
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->M()V

    .line 959
    :cond_9
    sget-object v0, Lcom/startapp/android/publish/ads/video/f$c;->c:Lcom/startapp/android/publish/ads/video/f$c;

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/video/f;->a(Lcom/startapp/android/publish/ads/video/f$c;)V

    .line 960
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->aB()V

    return-void
.end method

.method protected W()V
    .registers 5

    .line 1039
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    .line 1041
    :try_start_6
    iget-boolean v3, p0, Lcom/startapp/android/publish/ads/video/f;->l:Z

    if-eqz v3, :cond_e

    .line 1042
    invoke-interface {v0, v2}, Lcom/startapp/android/publish/ads/video/b/c;->a(Z)V

    goto :goto_13

    .line 1044
    :cond_e
    invoke-interface {v0, v1}, Lcom/startapp/android/publish/ads/video/b/c;->a(Z)V
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    nop

    :cond_13
    :goto_13
    new-array v0, v2, [Ljava/lang/Object;

    .line 1048
    iget-boolean v2, p0, Lcom/startapp/android/publish/ads/video/f;->l:Z

    if-eqz v2, :cond_20

    sget-object v2, Lcom/startapp/android/publish/ads/video/f$b;->b:Lcom/startapp/android/publish/ads/video/f$b;

    invoke-virtual {v2}, Lcom/startapp/android/publish/ads/video/f$b;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_26

    :cond_20
    sget-object v2, Lcom/startapp/android/publish/ads/video/f$b;->a:Lcom/startapp/android/publish/ads/video/f$b;

    .line 1049
    invoke-virtual {v2}, Lcom/startapp/android/publish/ads/video/f$b;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_26
    aput-object v2, v0, v1

    const-string v1, "videoApi.setSound"

    .line 1048
    invoke-virtual {p0, v1, v0}, Lcom/startapp/android/publish/ads/video/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected X()Z
    .registers 2

    .line 1128
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/startapp/android/publish/ads/video/b/c;->f()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected Y()Z
    .registers 5

    .line 1132
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->v:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_13

    .line 1133
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->X()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->p:Z

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1

    .line 1135
    :cond_13
    iget v0, p0, Lcom/startapp/android/publish/ads/video/f;->u:I

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapp/android/publish/adsCommon/n;->k()I

    move-result v3

    if-lt v0, v3, :cond_2e

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->X()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->p:Z

    if-eqz v0, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    return v1
.end method

.method protected Z()V
    .registers 7

    .line 1311
    invoke-super {p0}, Lcom/startapp/android/publish/ads/a/c;->z()V

    .line 1313
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getVideoTrackingDetails()Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->getImpressionUrls()[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    move-result-object v0

    new-instance v1, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->n()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/startapp/android/publish/ads/video/f;->m:I

    iget-object v4, p0, Lcom/startapp/android/publish/ads/video/f;->B:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    const-string v2, "impression"

    invoke-direct {p0, v0, v1, v5, v2}, Lcom/startapp/android/publish/ads/video/f;->a([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;ILjava/lang/String;)V

    .line 1314
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getVideoTrackingDetails()Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->getCreativeViewUrls()[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    move-result-object v0

    new-instance v1, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->n()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/startapp/android/publish/ads/video/f;->m:I

    iget-object v4, p0, Lcom/startapp/android/publish/ads/video/f;->B:Ljava/lang/String;

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    const-string v2, "creativeView"

    invoke-direct {p0, v0, v1, v5, v2}, Lcom/startapp/android/publish/ads/video/f;->a([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;ILjava/lang/String;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "currentPosition"

    .line 151
    invoke-super {p0, p1}, Lcom/startapp/android/publish/ads/a/c;->a(Landroid/os/Bundle;)V

    .line 154
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/startapp/android/publish/ads/video/f;->S:J

    const/16 v1, 0x64

    .line 155
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/n;->j()I

    move-result v2

    div-int/2addr v1, v2

    iput v1, p0, Lcom/startapp/android/publish/ads/video/f;->A:I

    .line 156
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->ac()V

    .line 157
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->ay()V

    .line 158
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->ab()V

    if-eqz p1, :cond_a5

    .line 161
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 162
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/ads/video/f;->n:I

    const-string v0, "latestPosition"

    .line 163
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/ads/video/f;->I:I

    const-string v0, "fractionProgressImpressionsSent"

    .line 164
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->L:Ljava/util/HashMap;

    const-string v0, "absoluteProgressImpressionsSent"

    .line 165
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->M:Ljava/util/HashMap;

    const-string v0, "isMuted"

    .line 166
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->l:Z

    const-string v0, "shouldSetBg"

    .line 168
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->o:Z

    const-string v0, "replayNum"

    .line 169
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/ads/video/f;->m:I

    const-string v0, "videoCompletedBroadcastSent"

    const/4 v1, 0x0

    .line 170
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->K:Z

    const-string v0, "pauseNum"

    .line 171
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/startapp/android/publish/ads/video/f;->N:I
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_78} :catch_79

    goto :goto_a5

    .line 174
    :catch_79
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->au()V

    .line 175
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->b()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packages : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->j()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoMode.onCreate"

    const-string v3, ""

    invoke-static {p1, v0, v2, v1, v3}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->p()V

    :cond_a5
    :goto_a5
    return-void
.end method

.method public a(Landroid/webkit/WebView;)V
    .registers 3

    .line 182
    invoke-super {p0, p1}, Lcom/startapp/android/publish/ads/a/c;->a(Landroid/webkit/WebView;)V

    const v0, 0x1ffffff

    .line 183
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    const/4 v0, 0x0

    .line 184
    invoke-static {p1, v0}, Lcom/startapp/common/a/c;->a(Landroid/webkit/WebView;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected a(Lcom/startapp/android/publish/ads/video/b/c$g;)V
    .registers 7

    .line 1077
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->b()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/adsCommon/f/d;->f:Lcom/startapp/android/publish/adsCommon/f/d;

    .line 1078
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/b/c$g;->a()Lcom/startapp/android/publish/ads/video/b/c$h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/ads/video/b/c$h;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/b/c$g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->ax()Ljava/lang/String;

    move-result-object v4

    .line 1077
    invoke-static {v0, v1, v2, v3, v4}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    sget-object v0, Lcom/startapp/android/publish/ads/video/f$13;->a:[I

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/b/c$g;->a()Lcom/startapp/android/publish/ads/video/b/c$h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/video/b/c$h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_37

    const/4 v1, 0x2

    if-eq v0, v1, :cond_34

    const/4 v1, 0x3

    if-eq v0, v1, :cond_31

    .line 1093
    sget-object v0, Lcom/startapp/android/publish/ads/video/c/a/a;->I:Lcom/startapp/android/publish/ads/video/c/a/a;

    goto :goto_39

    .line 1089
    :cond_31
    sget-object v0, Lcom/startapp/android/publish/ads/video/c/a/a;->s:Lcom/startapp/android/publish/ads/video/c/a/a;

    goto :goto_39

    .line 1086
    :cond_34
    sget-object v0, Lcom/startapp/android/publish/ads/video/c/a/a;->q:Lcom/startapp/android/publish/ads/video/c/a/a;

    goto :goto_39

    .line 1083
    :cond_37
    sget-object v0, Lcom/startapp/android/publish/ads/video/c/a/a;->o:Lcom/startapp/android/publish/ads/video/c/a/a;

    .line 1097
    :goto_39
    invoke-direct {p0, v0}, Lcom/startapp/android/publish/ads/video/f;->a(Lcom/startapp/android/publish/ads/video/c/a/a;)V

    .line 1101
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->v:Z

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {v0}, Lcom/startapp/android/publish/ads/video/b/c;->d()I

    move-result v0

    goto :goto_49

    :cond_47
    iget v0, p0, Lcom/startapp/android/publish/ads/video/f;->n:I

    :goto_49
    if-nez v0, :cond_81

    .line 1103
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->h()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->n()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/startapp/android/publish/ads/video/f;->m:I

    sget-object v4, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->VIDEO_ERROR:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    invoke-virtual {v4}, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1105
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->v:Z

    if-nez v0, :cond_6e

    .line 1106
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->b()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/startapp/android/publish/ads/video/h;->b(Landroid/content/Context;)V

    goto :goto_81

    .line 1107
    :cond_6e
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/b/c$g;->a()Lcom/startapp/android/publish/ads/video/b/c$h;

    move-result-object p1

    sget-object v0, Lcom/startapp/android/publish/ads/video/b/c$h;->c:Lcom/startapp/android/publish/ads/video/b/c$h;

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/ads/video/b/c$h;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_81

    .line 1108
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->b()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/startapp/android/publish/ads/video/h;->b(Landroid/content/Context;)V

    .line 1112
    :cond_81
    :goto_81
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->aq()Z

    move-result p1

    if-eqz p1, :cond_8b

    iget-boolean p1, p0, Lcom/startapp/android/publish/ads/video/f;->K:Z

    if-eqz p1, :cond_97

    :cond_8b
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getPostRollType()Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

    move-result-object p1

    sget-object v0, Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;->NONE:Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

    if-ne p1, v0, :cond_9e

    .line 1113
    :cond_97
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->au()V

    .line 1114
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->p()V

    goto :goto_a3

    .line 1116
    :cond_9e
    sget-object p1, Lcom/startapp/android/publish/ads/video/f$c;->c:Lcom/startapp/android/publish/ads/video/f$c;

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/video/f;->a(Lcom/startapp/android/publish/ads/video/f$c;)V

    :goto_a3
    return-void
.end method

.method protected a(Lcom/startapp/android/publish/ads/video/f$c;)V
    .registers 5

    .line 714
    sget-object v0, Lcom/startapp/android/publish/ads/video/f$c;->a:Lcom/startapp/android/publish/ads/video/f$c;

    if-ne p1, v0, :cond_b

    .line 715
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->W:Lcom/b/a/a/a/b/a/a;

    if-eqz v0, :cond_b

    .line 716
    invoke-virtual {v0}, Lcom/b/a/a/a/b/a/a;->d()V

    .line 719
    :cond_b
    sget-object v0, Lcom/startapp/android/publish/ads/video/f$c;->c:Lcom/startapp/android/publish/ads/video/f$c;

    if-ne p1, v0, :cond_16

    .line 720
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->W:Lcom/b/a/a/a/b/a/a;

    if-eqz v0, :cond_16

    .line 721
    invoke-virtual {v0}, Lcom/b/a/a/a/b/a/a;->h()V

    .line 724
    :cond_16
    sget-object v0, Lcom/startapp/android/publish/ads/video/f$c;->c:Lcom/startapp/android/publish/ads/video/f$c;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_27

    sget-object v0, Lcom/startapp/android/publish/ads/video/f$c;->b:Lcom/startapp/android/publish/ads/video/f$c;

    if-eq p1, v0, :cond_27

    .line 725
    iget v0, p0, Lcom/startapp/android/publish/ads/video/f;->J:I

    iput v0, p0, Lcom/startapp/android/publish/ads/video/f;->I:I

    .line 727
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->T()V

    goto :goto_40

    .line 729
    :cond_27
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->C:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 730
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->E:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 731
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    if-eqz v0, :cond_40

    .line 732
    invoke-interface {v0}, Lcom/startapp/android/publish/ads/video/b/c;->d()I

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/ads/video/f;->I:I

    .line 733
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {v0}, Lcom/startapp/android/publish/ads/video/b/c;->b()V

    .line 737
    :cond_40
    :goto_40
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->D:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 738
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->L:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 739
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->M:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 741
    sget-object v0, Lcom/startapp/android/publish/ads/video/f$c;->b:Lcom/startapp/android/publish/ads/video/f$c;

    if-ne p1, v0, :cond_57

    .line 742
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->al()V

    goto :goto_ad

    .line 744
    :cond_57
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getPostRollType()Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

    move-result-object p1

    sget-object v0, Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;->NONE:Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

    if-eq p1, v0, :cond_70

    .line 745
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->ae()V

    .line 746
    iget-object p1, p0, Lcom/startapp/android/publish/ads/video/f;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/adinformation/b;->a()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 749
    :cond_70
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getPostRollType()Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

    move-result-object p1

    sget-object v0, Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;->IMAGE:Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

    if-ne p1, v0, :cond_8c

    .line 751
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/startapp/android/publish/ads/video/f$5;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/ads/video/f$5;-><init>(Lcom/startapp/android/publish/ads/video/f;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9b

    .line 761
    :cond_8c
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getPostRollType()Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

    move-result-object p1

    sget-object v0, Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;->NONE:Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

    if-ne p1, v0, :cond_9b

    .line 762
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->p()V

    .line 765
    :cond_9b
    :goto_9b
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->al()V

    .line 767
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getPostRollType()Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

    move-result-object p1

    sget-object v0, Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;->NONE:Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

    if-eq p1, v0, :cond_ad

    .line 768
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->az()V

    :cond_ad
    :goto_ad
    return-void
.end method

.method protected a(Z)V
    .registers 8

    .line 1374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending sound "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_f

    const-string v1, "muted "

    goto :goto_11

    :cond_f
    const-string v1, "unmuted "

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p1, :cond_32

    .line 1375
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getVideoTrackingDetails()Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->getSoundMuteUrls()[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    move-result-object v0

    goto :goto_3e

    .line 1376
    :cond_32
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getVideoTrackingDetails()Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->getSoundUnmuteUrls()[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    move-result-object v0

    .line 1377
    :goto_3e
    new-instance v1, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->n()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    .line 1378
    invoke-interface {v3}, Lcom/startapp/android/publish/ads/video/b/c;->d()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/startapp/android/publish/ads/video/f;->h(I)I

    move-result v3

    iget v4, p0, Lcom/startapp/android/publish/ads/video/f;->m:I

    iget-object v5, p0, Lcom/startapp/android/publish/ads/video/f;->B:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v2, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {v2}, Lcom/startapp/android/publish/ads/video/b/c;->d()I

    move-result v2

    const-string v3, "sound"

    .line 1377
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/startapp/android/publish/ads/video/f;->a([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;ILjava/lang/String;)V

    .line 1379
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->W:Lcom/b/a/a/a/b/a/a;

    if-eqz v0, :cond_6d

    if-eqz p1, :cond_68

    const/4 p1, 0x0

    goto :goto_6a

    :cond_68
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1380
    :goto_6a
    invoke-virtual {v0, p1}, Lcom/b/a/a/a/b/a/a;->a(F)V

    :cond_6d
    return-void
.end method

.method protected a(Ljava/lang/String;Z)Z
    .registers 6

    .line 1200
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1201
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getClickUrl()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 1205
    :cond_17
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->S()Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;->POSTROLL:Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;

    goto :goto_22

    :cond_20
    sget-object v0, Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;->VIDEO:Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;

    :goto_22
    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->T:Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;

    const/4 v0, 0x3

    .line 1207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video clicked from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/startapp/android/publish/ads/video/f;->T:Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoMode"

    invoke-static {v2, v0, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 1210
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->T:Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;

    sget-object v1, Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;->VIDEO:Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;

    if-ne v0, v1, :cond_48

    .line 1211
    sget-object v0, Lcom/startapp/android/publish/ads/video/f$c;->b:Lcom/startapp/android/publish/ads/video/f$c;

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/video/f;->a(Lcom/startapp/android/publish/ads/video/f$c;)V

    .line 1214
    :cond_48
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->T:Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/ads/video/f;->a(Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;)V

    .line 1216
    invoke-super {p0, p1, p2}, Lcom/startapp/android/publish/ads/a/c;->a(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 4

    .line 874
    invoke-super {p0, p1}, Lcom/startapp/android/publish/ads/a/c;->b(Landroid/os/Bundle;)V

    .line 875
    iget v0, p0, Lcom/startapp/android/publish/ads/video/f;->n:I

    const-string v1, "currentPosition"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 876
    iget v0, p0, Lcom/startapp/android/publish/ads/video/f;->I:I

    const-string v1, "latestPosition"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 877
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->L:Ljava/util/HashMap;

    const-string v1, "fractionProgressImpressionsSent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 878
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->M:Ljava/util/HashMap;

    const-string v1, "absoluteProgressImpressionsSent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 879
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->l:Z

    const-string v1, "isMuted"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 880
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->o:Z

    const-string v1, "shouldSetBg"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 881
    iget v0, p0, Lcom/startapp/android/publish/ads/video/f;->m:I

    const-string v1, "replayNum"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 882
    iget v0, p0, Lcom/startapp/android/publish/ads/video/f;->N:I

    const-string v1, "pauseNum"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 883
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->K:Z

    const-string v1, "videoCompletedBroadcastSent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected c(I)J
    .registers 4

    const/16 v0, 0x3e8

    .line 688
    rem-int/2addr p1, v0

    if-nez p1, :cond_6

    goto :goto_7

    :cond_6
    move v0, p1

    :goto_7
    add-int/lit8 v0, v0, 0x32

    int-to-long v0, v0

    return-wide v0
.end method

.method protected d(I)I
    .registers 4

    .line 700
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->O:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 703
    :cond_6
    iget v0, p0, Lcom/startapp/android/publish/ads/video/f;->m:I

    if-lez v0, :cond_b

    return v1

    .line 706
    :cond_b
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getSkippableAfter()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v0, p1

    if-gtz v0, :cond_19

    return v1

    .line 710
    :cond_19
    div-int/lit16 v0, v0, 0x3e8

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected e(I)I
    .registers 3

    .line 851
    iget v0, p0, Lcom/startapp/android/publish/ads/video/f;->J:I

    mul-int v0, v0, p1

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method protected f(I)V
    .registers 7

    .line 1318
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->L:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "VideoMode"

    if-nez v0, :cond_94

    .line 1319
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->Q:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 1320
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->Q:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending fraction progress event with fraction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", total: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 1322
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/startapp/android/publish/ads/video/tracking/FractionTrackingLink;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;

    new-instance v1, Lcom/startapp/android/publish/ads/video/tracking/VideoProgressTrackingParams;

    .line 1323
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->n()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/startapp/android/publish/ads/video/f;->m:I

    iget-object v4, p0, Lcom/startapp/android/publish/ads/video/f;->B:Ljava/lang/String;

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/startapp/android/publish/ads/video/tracking/VideoProgressTrackingParams;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/video/f;->e(I)I

    move-result v2

    const-string v3, "fraction"

    .line 1322
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/startapp/android/publish/ads/video/f;->a([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;ILjava/lang/String;)V

    .line 1325
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->W:Lcom/b/a/a/a/b/a/a;

    if-eqz v0, :cond_85

    const/16 v1, 0x19

    if-eq p1, v1, :cond_82

    const/16 v1, 0x32

    if-eq p1, v1, :cond_7e

    const/16 v1, 0x4b

    if-eq p1, v1, :cond_7a

    goto :goto_85

    .line 1334
    :cond_7a
    invoke-virtual {v0}, Lcom/b/a/a/a/b/a/a;->c()V

    goto :goto_85

    .line 1331
    :cond_7e
    invoke-virtual {v0}, Lcom/b/a/a/a/b/a/a;->b()V

    goto :goto_85

    .line 1328
    :cond_82
    invoke-virtual {v0}, Lcom/b/a/a/a/b/a/a;->a()V

    .line 1339
    :cond_85
    :goto_85
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->L:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a8

    .line 1341
    :cond_94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fraction progress event already sent for fraction: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_a8
    return-void
.end method

.method protected g(I)V
    .registers 7

    .line 1346
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->M:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "VideoMode"

    if-nez v0, :cond_74

    .line 1347
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->R:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 1348
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->R:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending absolute progress event with video progress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", total: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 1350
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/startapp/android/publish/ads/video/tracking/AbsoluteTrackingLink;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;

    new-instance v1, Lcom/startapp/android/publish/ads/video/tracking/VideoProgressTrackingParams;

    .line 1351
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->n()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/startapp/android/publish/ads/video/f;->m:I

    iget-object v4, p0, Lcom/startapp/android/publish/ads/video/f;->B:Ljava/lang/String;

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/startapp/android/publish/ads/video/tracking/VideoProgressTrackingParams;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    const-string v2, "absolute"

    .line 1350
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/startapp/android/publish/ads/video/f;->a([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;ILjava/lang/String;)V

    .line 1353
    :cond_65
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->M:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_88

    .line 1355
    :cond_74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Absolute progress event already sent for video progress: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_88
    return-void
.end method

.method public p()V
    .registers 3

    .line 913
    invoke-super {p0}, Lcom/startapp/android/publish/ads/a/c;->p()V

    .line 914
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->y:Z

    if-eqz v0, :cond_16

    .line 915
    invoke-static {}, Lcom/startapp/android/publish/ads/video/c;->a()Lcom/startapp/android/publish/ads/video/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getLocalVideoPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/ads/video/c;->c(Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method public q()V
    .registers 2

    .line 1193
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->s:Z

    if-nez v0, :cond_7

    .line 1194
    invoke-super {p0}, Lcom/startapp/android/publish/ads/a/c;->q()V

    :cond_7
    return-void
.end method

.method public r()Z
    .registers 5

    .line 1148
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->S()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 1149
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->B()V

    return v1

    .line 1152
    :cond_b
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {v0}, Lcom/startapp/android/publish/ads/video/b/c;->d()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/video/f;->d(I)I

    move-result v0

    .line 1153
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->aw()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_24

    if-nez v0, :cond_24

    .line 1154
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->V()V

    return v3

    .line 1156
    :cond_24
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->isCloseable()Z

    move-result v0

    if-nez v0, :cond_34

    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->P:Z

    if-eqz v0, :cond_33

    goto :goto_34

    :cond_33
    return v3

    .line 1157
    :cond_34
    :goto_34
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->B()V

    return v1
.end method

.method public s()V
    .registers 3

    .line 892
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->S()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->P:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->O:Z

    if-nez v0, :cond_1d

    .line 894
    sget-object v0, Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;->EXTERNAL:Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/ads/video/f;->a(Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;)V

    .line 897
    :cond_1d
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->av()V

    .line 899
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->C:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 900
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->D:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 901
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f;->E:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 902
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->M()V

    const/4 v0, 0x1

    .line 906
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/video/f;->o:Z

    .line 908
    invoke-super {p0}, Lcom/startapp/android/publish/ads/a/c;->s()V

    return-void
.end method

.method public u()V
    .registers 2

    .line 246
    invoke-super {p0}, Lcom/startapp/android/publish/ads/a/c;->u()V

    .line 248
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_10

    .line 249
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->aa()V

    :cond_10
    return-void
.end method

.method protected y()Lcom/startapp/android/publish/html/JsInterface;
    .registers 11

    .line 926
    new-instance v9, Lcom/startapp/android/publish/ads/video/VideoJsInterface;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->b()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/ads/video/f;->g:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/startapp/android/publish/ads/video/f;->g:Ljava/lang/Runnable;

    .line 929
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->at()Ljava/lang/Runnable;

    move-result-object v4

    .line 930
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->as()Ljava/lang/Runnable;

    move-result-object v5

    .line 931
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/f;->ar()Ljava/lang/Runnable;

    move-result-object v6

    new-instance v7, Lcom/startapp/android/publish/adsCommon/d/b;

    .line 932
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/f;->n()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/startapp/android/publish/adsCommon/d/b;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/video/f;->a(I)Z

    move-result v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/startapp/android/publish/ads/video/VideoJsInterface;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/startapp/android/publish/adsCommon/d/b;Z)V

    return-object v9
.end method

.method protected z()V
    .registers 1

    return-void
.end method
