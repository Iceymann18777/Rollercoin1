.class public Lcom/integralads/avid/library/mopub/processing/AvidSceenProcessor;
.super Ljava/lang/Object;
.source "AvidSceenProcessor.java"

# interfaces
.implements Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor;


# instance fields
.field private final childrenProcessor:Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor;


# direct methods
.method public constructor <init>(Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/integralads/avid/library/mopub/processing/AvidSceenProcessor;->childrenProcessor:Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor;

    return-void
.end method


# virtual methods
.method public getState(Landroid/view/View;)Lorg/json/JSONObject;
    .registers 2

    const/4 p1, 0x0

    .line 24
    invoke-static {p1, p1, p1, p1}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->getViewState(IIII)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public iterateChildren(Landroid/view/View;Lorg/json/JSONObject;Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor$IAvidViewWalker;Z)V
    .registers 6

    .line 29
    invoke-static {}, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;->getInstance()Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;->getRootViews()Ljava/util/List;

    move-result-object p1

    .line 30
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    .line 31
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/processing/AvidSceenProcessor;->childrenProcessor:Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor;

    invoke-interface {p3, p4, v0, p2}, Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor$IAvidViewWalker;->walkView(Landroid/view/View;Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor;Lorg/json/JSONObject;)V

    goto :goto_c

    :cond_1e
    return-void
.end method
