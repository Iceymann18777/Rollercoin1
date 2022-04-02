.class public Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private absoluteTrackingUrls:[Lcom/startapp/android/publish/ads/video/tracking/AbsoluteTrackingLink;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Lcom/startapp/android/publish/ads/video/tracking/AbsoluteTrackingLink;
    .end annotation
.end field

.field private creativeViewUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .end annotation
.end field

.field private fractionTrackingUrls:[Lcom/startapp/android/publish/ads/video/tracking/FractionTrackingLink;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Lcom/startapp/android/publish/ads/video/tracking/FractionTrackingLink;
    .end annotation
.end field

.field private impressionUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .end annotation
.end field

.field private inlineErrorTrackingUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .end annotation
.end field

.field private soundMuteUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .end annotation
.end field

.field private soundUnmuteUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .end annotation
.end field

.field private videoClickTrackingUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .end annotation
.end field

.field private videoClosedUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .end annotation
.end field

.field private videoPausedUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .end annotation
.end field

.field private videoPostRollClosedUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .end annotation
.end field

.field private videoPostRollImpressionUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .end annotation
.end field

.field private videoResumedUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .end annotation
.end field

.field private videoRewardedUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .end annotation
.end field

.field private videoSkippedUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/startapp/android/publish/ads/video/c/a/e;)V
    .registers 6

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_ee

    .line 59
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/c/a/e;->a()Ljava/util/HashMap;

    move-result-object v0

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    sget-object v2, Lcom/startapp/android/publish/ads/video/c/a/b;->k:Lcom/startapp/android/publish/ads/video/c/a/b;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->addFractionUrls(Ljava/util/List;ILjava/util/List;)V

    .line 63
    sget-object v2, Lcom/startapp/android/publish/ads/video/c/a/b;->l:Lcom/startapp/android/publish/ads/video/c/a/b;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/16 v3, 0x19

    invoke-static {v2, v3, v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->addFractionUrls(Ljava/util/List;ILjava/util/List;)V

    .line 64
    sget-object v2, Lcom/startapp/android/publish/ads/video/c/a/b;->m:Lcom/startapp/android/publish/ads/video/c/a/b;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/16 v3, 0x32

    invoke-static {v2, v3, v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->addFractionUrls(Ljava/util/List;ILjava/util/List;)V

    .line 65
    sget-object v2, Lcom/startapp/android/publish/ads/video/c/a/b;->n:Lcom/startapp/android/publish/ads/video/c/a/b;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/16 v3, 0x4b

    invoke-static {v2, v3, v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->addFractionUrls(Ljava/util/List;ILjava/util/List;)V

    .line 66
    sget-object v2, Lcom/startapp/android/publish/ads/video/c/a/b;->o:Lcom/startapp/android/publish/ads/video/c/a/b;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/16 v3, 0x64

    invoke-static {v2, v3, v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->addFractionUrls(Ljava/util/List;ILjava/util/List;)V

    .line 67
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/startapp/android/publish/ads/video/tracking/FractionTrackingLink;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/startapp/android/publish/ads/video/tracking/FractionTrackingLink;

    iput-object v1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->fractionTrackingUrls:[Lcom/startapp/android/publish/ads/video/tracking/FractionTrackingLink;

    .line 69
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/c/a/e;->d()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->urlToTrackingList(Ljava/util/List;)[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->impressionUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    .line 70
    sget-object v1, Lcom/startapp/android/publish/ads/video/c/a/b;->a:Lcom/startapp/android/publish/ads/video/c/a/b;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->trackingToTrackingList(Ljava/util/List;)[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->soundMuteUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    .line 71
    sget-object v1, Lcom/startapp/android/publish/ads/video/c/a/b;->b:Lcom/startapp/android/publish/ads/video/c/a/b;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->trackingToTrackingList(Ljava/util/List;)[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->soundUnmuteUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    .line 72
    sget-object v1, Lcom/startapp/android/publish/ads/video/c/a/b;->c:Lcom/startapp/android/publish/ads/video/c/a/b;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->trackingToTrackingList(Ljava/util/List;)[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->videoPausedUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    .line 73
    sget-object v1, Lcom/startapp/android/publish/ads/video/c/a/b;->d:Lcom/startapp/android/publish/ads/video/c/a/b;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->trackingToTrackingList(Ljava/util/List;)[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->videoResumedUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    .line 74
    sget-object v1, Lcom/startapp/android/publish/ads/video/c/a/b;->f:Lcom/startapp/android/publish/ads/video/c/a/b;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->trackingToTrackingList(Ljava/util/List;)[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->videoSkippedUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    .line 75
    sget-object v1, Lcom/startapp/android/publish/ads/video/c/a/b;->c:Lcom/startapp/android/publish/ads/video/c/a/b;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->trackingToTrackingList(Ljava/util/List;)[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->videoPausedUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    .line 76
    sget-object v1, Lcom/startapp/android/publish/ads/video/c/a/b;->y:Lcom/startapp/android/publish/ads/video/c/a/b;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->trackingToTrackingList(Ljava/util/List;)[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->videoClosedUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    .line 77
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/c/a/e;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->urlToTrackingList(Ljava/util/List;)[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->inlineErrorTrackingUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    .line 78
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/c/a/e;->c()Lcom/startapp/android/publish/ads/video/c/a/a/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/c/a/a/e;->b()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->urlToTrackingList(Ljava/util/List;)[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->videoClickTrackingUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    .line 79
    sget-object p1, Lcom/startapp/android/publish/ads/video/c/a/b;->s:Lcom/startapp/android/publish/ads/video/c/a/b;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->toAbsoluteTrackingList(Ljava/util/List;)[Lcom/startapp/android/publish/ads/video/tracking/AbsoluteTrackingLink;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->absoluteTrackingUrls:[Lcom/startapp/android/publish/ads/video/tracking/AbsoluteTrackingLink;

    :cond_ee
    return-void
.end method

.method private static addFractionUrls(Ljava/util/List;ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/ads/video/c/a/a/c;",
            ">;I",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/ads/video/tracking/FractionTrackingLink;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_2e

    .line 172
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/ads/video/c/a/a/c;

    .line 173
    new-instance v1, Lcom/startapp/android/publish/ads/video/tracking/FractionTrackingLink;

    invoke-direct {v1}, Lcom/startapp/android/publish/ads/video/tracking/FractionTrackingLink;-><init>()V

    .line 174
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/c/a/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/ads/video/tracking/FractionTrackingLink;->setTrackingUrl(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v1, p1}, Lcom/startapp/android/publish/ads/video/tracking/FractionTrackingLink;->setFraction(I)V

    const/4 v0, 0x1

    .line 176
    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/ads/video/tracking/FractionTrackingLink;->setAppendReplayParameter(Z)V

    const-string v0, ""

    .line 177
    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/ads/video/tracking/FractionTrackingLink;->setReplayParameter(Ljava/lang/String;)V

    .line 178
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_2e
    return-void
.end method

.method private printTrackingLinks([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_7

    .line 164
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const-string p1, ""

    return-object p1
.end method

.method private toAbsoluteTrackingList(Ljava/util/List;)[Lcom/startapp/android/publish/ads/video/tracking/AbsoluteTrackingLink;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/ads/video/c/a/a/c;",
            ">;)[",
            "Lcom/startapp/android/publish/ads/video/tracking/AbsoluteTrackingLink;"
        }
    .end annotation

    if-eqz p1, :cond_46

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 223
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/ads/video/c/a/a/c;

    .line 224
    new-instance v2, Lcom/startapp/android/publish/ads/video/tracking/AbsoluteTrackingLink;

    invoke-direct {v2}, Lcom/startapp/android/publish/ads/video/tracking/AbsoluteTrackingLink;-><init>()V

    .line 225
    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/video/c/a/a/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/startapp/android/publish/ads/video/tracking/AbsoluteTrackingLink;->setTrackingUrl(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/video/c/a/a/c;->b()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_35

    .line 227
    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/video/c/a/a/c;->b()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/startapp/android/publish/ads/video/tracking/AbsoluteTrackingLink;->setVideoOffsetMillis(I)V

    .line 229
    :cond_35
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 232
    :cond_39
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/startapp/android/publish/ads/video/tracking/AbsoluteTrackingLink;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/startapp/android/publish/ads/video/tracking/AbsoluteTrackingLink;

    goto :goto_49

    :cond_46
    const/4 p1, 0x0

    new-array p1, p1, [Lcom/startapp/android/publish/ads/video/tracking/AbsoluteTrackingLink;

    :goto_49
    return-object p1
.end method

.method private static trackingToTrackingList(Ljava/util/List;)[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/ads/video/c/a/a/c;",
            ">;)[",
            "Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;"
        }
    .end annotation

    if-eqz p0, :cond_38

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 187
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/ads/video/c/a/a/c;

    .line 188
    new-instance v2, Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    invoke-direct {v2}, Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;-><init>()V

    .line 189
    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/video/c/a/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;->setTrackingUrl(Ljava/lang/String;)V

    .line 190
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 193
    :cond_2b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    goto :goto_3b

    :cond_38
    const/4 p0, 0x0

    new-array p0, p0, [Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    :goto_3b
    return-object p0
.end method

.method private static urlToTrackingList(Ljava/util/List;)[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;"
        }
    .end annotation

    if-eqz p0, :cond_34

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 206
    new-instance v2, Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    invoke-direct {v2}, Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;-><init>()V

    .line 207
    invoke-virtual {v2, v1}, Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;->setTrackingUrl(Ljava/lang/String;)V

    .line 208
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 211
    :cond_27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    goto :goto_37

    :cond_34
    const/4 p0, 0x0

    new-array p0, p0, [Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    :goto_37
    return-object p0
.end method


# virtual methods
.method public getAbsoluteTrackingUrls()[Lcom/startapp/android/publish/ads/video/tracking/AbsoluteTrackingLink;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->absoluteTrackingUrls:[Lcom/startapp/android/publish/ads/video/tracking/AbsoluteTrackingLink;

    return-object v0
.end method

.method public getCreativeViewUrls()[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->creativeViewUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    return-object v0
.end method

.method public getFractionTrackingUrls()[Lcom/startapp/android/publish/ads/video/tracking/FractionTrackingLink;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->fractionTrackingUrls:[Lcom/startapp/android/publish/ads/video/tracking/FractionTrackingLink;

    return-object v0
.end method

.method public getImpressionUrls()[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->impressionUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    return-object v0
.end method

.method public getInlineErrorTrackingUrls()[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->inlineErrorTrackingUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    return-object v0
.end method

.method public getSoundMuteUrls()[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->soundMuteUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    return-object v0
.end method

.method public getSoundUnmuteUrls()[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->soundUnmuteUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    return-object v0
.end method

.method public getVideoClickTrackingUrls()[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->videoClickTrackingUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    return-object v0
.end method

.method public getVideoClosedUrls()[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->videoClosedUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    return-object v0
.end method

.method public getVideoPausedUrls()[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->videoPausedUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    return-object v0
.end method

.method public getVideoPostRollClosedUrls()[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->videoPostRollClosedUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    return-object v0
.end method

.method public getVideoPostRollImpressionUrls()[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->videoPostRollImpressionUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    return-object v0
.end method

.method public getVideoResumedUrls()[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->videoResumedUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    return-object v0
.end method

.method public getVideoRewardedUrls()[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->videoRewardedUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    return-object v0
.end method

.method public getVideoSkippedUrls()[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->videoSkippedUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoTrackingDetails [fractionTrackingUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->fractionTrackingUrls:[Lcom/startapp/android/publish/ads/video/tracking/FractionTrackingLink;

    invoke-direct {p0, v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->printTrackingLinks([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", absoluteTrackingUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->absoluteTrackingUrls:[Lcom/startapp/android/publish/ads/video/tracking/AbsoluteTrackingLink;

    .line 146
    invoke-direct {p0, v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->printTrackingLinks([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", impressionUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->impressionUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    .line 147
    invoke-direct {p0, v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->printTrackingLinks([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", creativeViewUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->creativeViewUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    .line 148
    invoke-direct {p0, v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->printTrackingLinks([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", soundMuteUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->soundMuteUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    .line 149
    invoke-direct {p0, v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->printTrackingLinks([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", soundUnmuteUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->soundUnmuteUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    .line 150
    invoke-direct {p0, v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->printTrackingLinks([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoPausedUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->videoPausedUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    .line 151
    invoke-direct {p0, v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->printTrackingLinks([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoResumedUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->videoResumedUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    .line 152
    invoke-direct {p0, v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->printTrackingLinks([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoSkippedUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->videoSkippedUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    .line 153
    invoke-direct {p0, v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->printTrackingLinks([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoClosedUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->videoClosedUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    .line 154
    invoke-direct {p0, v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->printTrackingLinks([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoPostRollImpressionUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->videoPostRollImpressionUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    .line 155
    invoke-direct {p0, v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->printTrackingLinks([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoPostRollClosedUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->videoPostRollClosedUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    .line 156
    invoke-direct {p0, v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->printTrackingLinks([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoRewardedUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->videoRewardedUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    .line 157
    invoke-direct {p0, v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->printTrackingLinks([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoClickTrackingUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->videoClickTrackingUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    .line 158
    invoke-direct {p0, v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->printTrackingLinks([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", inlineErrorTrackingUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->inlineErrorTrackingUrls:[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    .line 159
    invoke-direct {p0, v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->printTrackingLinks([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
