.class public Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;
.super Ljava/lang/Object;
.source "AvidActivityStack.java"


# static fields
.field private static avidActivityStackInstance:Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;


# instance fields
.field private final activities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;

    invoke-direct {v0}, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;-><init>()V

    sput-object v0, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;->avidActivityStackInstance:Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;->activities:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;
    .registers 1

    .line 23
    sget-object v0, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;->avidActivityStackInstance:Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;

    return-object v0
.end method

.method private getRootView(Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;)Landroid/view/View;
    .registers 4

    .line 85
    invoke-virtual {p1}, Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return-object v0

    .line 89
    :cond_a
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 90
    invoke-virtual {p1}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_24

    .line 93
    :cond_17
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_24

    move-object v0, p1

    :cond_24
    :goto_24
    return-object v0
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .registers 4

    .line 27
    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;->find(Landroid/app/Activity;)Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;

    move-result-object v0

    if-nez v0, :cond_10

    .line 28
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;->activities:Ljava/util/ArrayList;

    new-instance v1, Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;

    invoke-direct {v1, p1}, Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method public cleanup()V
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method find(Landroid/app/Activity;)Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;
    .registers 5

    .line 58
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;

    .line 59
    invoke-virtual {v1, p1}, Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRootViews()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    iget-object v1, p0, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;

    .line 37
    invoke-virtual {p0, v3}, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;->isFinished(Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_c

    .line 41
    :cond_22
    invoke-direct {p0, v3}, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;->getRootView(Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_c

    move-object v2, v3

    goto :goto_c

    :cond_2a
    if-eqz v2, :cond_2f

    .line 47
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    return-object v0
.end method

.method isFinished(Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;)Z
    .registers 4

    .line 73
    invoke-virtual {p1}, Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-nez p1, :cond_a

    const/4 p1, 0x1

    return p1

    .line 77
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_15

    .line 78
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    return p1

    .line 80
    :cond_15
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    return p1
.end method
