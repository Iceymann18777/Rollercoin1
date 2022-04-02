.class Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 102
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    iget-boolean v0, v0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->loaded:Z

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_db

    .line 108
    :cond_12
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    iget-boolean v0, v0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->visible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->isShown()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    invoke-static {v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->access$000(Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 109
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    iget-object v2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    invoke-virtual {v2}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getCurrentBannerIndex()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;

    .line 110
    iget-object v2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    invoke-static {v2, v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->access$100(Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;)V

    .line 111
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    iget-boolean v0, v0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->addedDisplayEvent:Z

    if-nez v0, :cond_4d

    .line 112
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    iput-boolean v1, v0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->addedDisplayEvent:Z

    .line 113
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    invoke-static {v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->access$200(Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;)V

    .line 118
    :cond_4d
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    iget-boolean v0, v0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotationEnabled:Z

    if-eqz v0, :cond_73

    .line 119
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getBannerOptions()Lcom/startapp/android/publish/ads/banner/BannerOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->b()I

    move-result v2

    iget-object v3, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    iget-boolean v3, v3, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->firstRotationFinished:Z

    if-nez v3, :cond_6c

    iget-object v3, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    iget-object v3, v3, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

    invoke-virtual {v3}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->p()I

    move-result v3

    goto :goto_6d

    :cond_6c
    const/4 v3, 0x1

    :goto_6d
    mul-int v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotate(F)V

    .line 123
    :cond_73
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    iget v0, v0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotation:F

    iget-object v2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    invoke-virtual {v2}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getBannerOptions()Lcom/startapp/android/publish/ads/banner/BannerOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->b()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x5a

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_bd

    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    iget v0, v0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotation:F

    iget-object v2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    invoke-virtual {v2}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getBannerOptions()Lcom/startapp/android/publish/ads/banner/BannerOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x5a

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_bd

    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    iget-boolean v0, v0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->firstRotation:Z

    if-nez v0, :cond_bd

    .line 124
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    iget-boolean v0, v0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->attachedToWindow:Z

    if-eqz v0, :cond_b8

    .line 125
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getBannerOptions()Lcom/startapp/android/publish/ads/banner/BannerOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->c()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    :cond_b8
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    iput-boolean v3, v0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotating:Z

    goto :goto_cf

    .line 129
    :cond_bd
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getBannerOptions()Lcom/startapp/android/publish/ads/banner/BannerOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->a()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v0, p0, v4, v5}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    iput-boolean v1, v0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotating:Z

    .line 133
    :goto_cf
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getNextBannerIndex()I

    move-result v0

    if-nez v0, :cond_db

    .line 134
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    iput-boolean v3, v0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->firstRotation:Z

    :cond_db
    :goto_db
    return-void
.end method
