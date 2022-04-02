.class final Lcom/appnext/core/f$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/f;->a(Lcom/appnext/core/Ad;Lcom/appnext/core/AppnextAd;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic fV:Lcom/appnext/core/Ad;

.field final synthetic hf:Lcom/appnext/core/p;

.field final synthetic hg:Lcom/appnext/core/AppnextAd;

.field final synthetic hh:Ljava/lang/String;

.field final synthetic hi:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appnext/core/p;Lcom/appnext/core/Ad;Lcom/appnext/core/AppnextAd;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 622
    iput-object p1, p0, Lcom/appnext/core/f$4;->hf:Lcom/appnext/core/p;

    iput-object p2, p0, Lcom/appnext/core/f$4;->fV:Lcom/appnext/core/Ad;

    iput-object p3, p0, Lcom/appnext/core/f$4;->hg:Lcom/appnext/core/AppnextAd;

    iput-object p4, p0, Lcom/appnext/core/f$4;->hh:Ljava/lang/String;

    iput-object p5, p0, Lcom/appnext/core/f$4;->hi:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 626
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/f$4;->hf:Lcom/appnext/core/p;

    const-string v1, "stp_flag"

    invoke-virtual {v0, v1}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 628
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 629
    new-instance v1, Landroid/util/Pair;

    const-string v2, "client_date"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    new-instance v1, Landroid/util/Pair;

    const-string v2, "did"

    iget-object v3, p0, Lcom/appnext/core/f$4;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v3}, Lcom/appnext/core/Ad;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    .line 1110
    invoke-static {v3, v4}, Lcom/appnext/core/f;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    .line 630
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    new-instance v1, Landroid/util/Pair;

    const-string v2, "session_id"

    iget-object v3, p0, Lcom/appnext/core/f$4;->hg:Lcom/appnext/core/AppnextAd;

    invoke-virtual {v3}, Lcom/appnext/core/AppnextAd;->getSession()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    new-instance v1, Landroid/util/Pair;

    const-string v2, "tid"

    iget-object v3, p0, Lcom/appnext/core/f$4;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v3}, Lcom/appnext/core/Ad;->getTID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    new-instance v1, Landroid/util/Pair;

    const-string v2, "vid"

    iget-object v3, p0, Lcom/appnext/core/f$4;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v3}, Lcom/appnext/core/Ad;->getVID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    new-instance v1, Landroid/util/Pair;

    const-string v2, "auid"

    iget-object v3, p0, Lcom/appnext/core/f$4;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v3}, Lcom/appnext/core/Ad;->getAUID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    new-instance v1, Landroid/util/Pair;

    const-string v2, "osid"

    const-string v3, "100"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    new-instance v1, Landroid/util/Pair;

    const-string v2, "tem_id"

    iget-object v3, p0, Lcom/appnext/core/f$4;->hh:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    new-instance v1, Landroid/util/Pair;

    const-string v2, "pid"

    iget-object v3, p0, Lcom/appnext/core/f$4;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v3}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    new-instance v1, Landroid/util/Pair;

    const-string v2, "banner_id"

    iget-object v3, p0, Lcom/appnext/core/f$4;->hg:Lcom/appnext/core/AppnextAd;

    invoke-virtual {v3}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    new-instance v1, Landroid/util/Pair;

    const-string v2, "cm_id"

    iget-object v3, p0, Lcom/appnext/core/f$4;->hg:Lcom/appnext/core/AppnextAd;

    invoke-virtual {v3}, Lcom/appnext/core/AppnextAd;->getCampaignID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    new-instance v1, Landroid/util/Pair;

    const-string v2, "event_name"

    iget-object v3, p0, Lcom/appnext/core/f$4;->hi:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    new-instance v1, Landroid/util/Pair;

    const-string v2, "package_id"

    iget-object v3, p0, Lcom/appnext/core/f$4;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v3}, Lcom/appnext/core/Ad;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "https://global.appnext.com/stp.aspx"

    const/16 v2, 0x1f40

    .line 1202
    invoke-static {v1, v0, v2}, Lcom/appnext/core/f;->a(Ljava/lang/String;Ljava/util/ArrayList;I)Ljava/lang/String;
    :try_end_f2
    .catchall {:try_start_0 .. :try_end_f2} :catchall_f2

    :catchall_f2
    return-void
.end method
