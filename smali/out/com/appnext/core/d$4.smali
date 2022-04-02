.class final Lcom/appnext/core/d$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/Ad;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fV:Lcom/appnext/core/Ad;

.field final synthetic fY:Lcom/appnext/core/d;

.field final synthetic gc:I

.field final synthetic gd:Ljava/lang/String;

.field final synthetic ge:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appnext/core/d;Lcom/appnext/core/Ad;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 480
    iput-object p1, p0, Lcom/appnext/core/d$4;->fY:Lcom/appnext/core/d;

    iput-object p2, p0, Lcom/appnext/core/d$4;->fV:Lcom/appnext/core/Ad;

    iput p3, p0, Lcom/appnext/core/d$4;->gc:I

    iput-object p4, p0, Lcom/appnext/core/d$4;->gd:Ljava/lang/String;

    iput-object p5, p0, Lcom/appnext/core/d$4;->ge:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 483
    iget-object v0, p0, Lcom/appnext/core/d$4;->fY:Lcom/appnext/core/d;

    iget-object v1, p0, Lcom/appnext/core/d$4;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v0, v1}, Lcom/appnext/core/d;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 485
    invoke-virtual {v0}, Lcom/appnext/core/a;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_19

    .line 486
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/appnext/core/a;->d(Ljava/util/ArrayList;)V

    goto :goto_20

    .line 488
    :cond_19
    invoke-virtual {v0}, Lcom/appnext/core/a;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/core/a;->d(Ljava/util/ArrayList;)V

    .line 489
    :goto_20
    iget v1, p0, Lcom/appnext/core/d$4;->gc:I

    invoke-virtual {v0, v1}, Lcom/appnext/core/a;->setState(I)V

    .line 490
    iget-object v1, p0, Lcom/appnext/core/d$4;->gd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appnext/core/a;->O(Ljava/lang/String;)V

    .line 492
    iget-object v1, p0, Lcom/appnext/core/d$4;->fY:Lcom/appnext/core/d;

    iget-object v2, p0, Lcom/appnext/core/d$4;->fV:Lcom/appnext/core/Ad;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/appnext/core/d$4;->gd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/appnext/core/d$4;->ge:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/appnext/core/a;->getPlacementID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/appnext/core/d;->a(Lcom/appnext/core/Ad;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    return-void
.end method
