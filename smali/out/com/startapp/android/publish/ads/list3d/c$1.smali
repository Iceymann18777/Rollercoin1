.class Lcom/startapp/android/publish/ads/list3d/c$1;
.super Landroid/content/BroadcastReceiver;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/ads/list3d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/ads/list3d/c;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/list3d/c;)V
    .registers 2

    .line 237
    iput-object p1, p0, Lcom/startapp/android/publish/ads/list3d/c$1;->a:Lcom/startapp/android/publish/ads/list3d/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    .line 240
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/c$1;->a:Lcom/startapp/android/publish/ads/list3d/c;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/list3d/c;->getHeight()I

    move-result v0

    const-string v1, "getHeight"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 241
    iget-object v1, p0, Lcom/startapp/android/publish/ads/list3d/c$1;->a:Lcom/startapp/android/publish/ads/list3d/c;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/list3d/c;->getHeight()I

    move-result v1

    int-to-double v1, v1

    int-to-double v3, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/startapp/android/publish/ads/list3d/c$1;->a:Lcom/startapp/android/publish/ads/list3d/c;

    invoke-static {v3}, Lcom/startapp/android/publish/ads/list3d/c;->a(Lcom/startapp/android/publish/ads/list3d/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Updating Position with Ratio: ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/c$1;->a:Lcom/startapp/android/publish/ads/list3d/c;

    iget v3, v0, Lcom/startapp/android/publish/ads/list3d/c;->a:I

    const-string v4, "mTouchState"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/startapp/android/publish/ads/list3d/c;->a:I

    .line 245
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/c$1;->a:Lcom/startapp/android/publish/ads/list3d/c;

    iget v3, v0, Lcom/startapp/android/publish/ads/list3d/c;->b:I

    const-string v4, "mTouchStartX"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/startapp/android/publish/ads/list3d/c;->b:I

    .line 246
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/c$1;->a:Lcom/startapp/android/publish/ads/list3d/c;

    iget v3, v0, Lcom/startapp/android/publish/ads/list3d/c;->c:I

    const-string v4, "mTouchStartY"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/startapp/android/publish/ads/list3d/c;->c:I

    .line 247
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/c$1;->a:Lcom/startapp/android/publish/ads/list3d/c;

    iget v3, v0, Lcom/startapp/android/publish/ads/list3d/c;->g:I

    const-string v4, "mListRotation"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/startapp/android/publish/ads/list3d/c;->g:I

    .line 248
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/c$1;->a:Lcom/startapp/android/publish/ads/list3d/c;

    iget v3, v0, Lcom/startapp/android/publish/ads/list3d/c;->h:I

    const-string v4, "mFirstItemPosition"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    double-to-int v3, v3

    iput v3, v0, Lcom/startapp/android/publish/ads/list3d/c;->h:I

    .line 249
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/c$1;->a:Lcom/startapp/android/publish/ads/list3d/c;

    iget v3, v0, Lcom/startapp/android/publish/ads/list3d/c;->h:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/startapp/android/publish/ads/list3d/c;->h:I

    .line 250
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/c$1;->a:Lcom/startapp/android/publish/ads/list3d/c;

    iget v3, v0, Lcom/startapp/android/publish/ads/list3d/c;->i:I

    const-string v5, "mLastItemPosition"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    int-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v1

    double-to-int v3, v5

    iput v3, v0, Lcom/startapp/android/publish/ads/list3d/c;->i:I

    .line 251
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/c$1;->a:Lcom/startapp/android/publish/ads/list3d/c;

    iget v3, v0, Lcom/startapp/android/publish/ads/list3d/c;->i:I

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/startapp/android/publish/ads/list3d/c;->i:I

    .line 252
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/c$1;->a:Lcom/startapp/android/publish/ads/list3d/c;

    iget v3, v0, Lcom/startapp/android/publish/ads/list3d/c;->e:I

    const-string v5, "mListTop"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    int-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v1

    double-to-int v3, v5

    iput v3, v0, Lcom/startapp/android/publish/ads/list3d/c;->e:I

    .line 253
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/c$1;->a:Lcom/startapp/android/publish/ads/list3d/c;

    iget v3, v0, Lcom/startapp/android/publish/ads/list3d/c;->d:I

    const-string v5, "mListTopStart"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    int-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v1

    double-to-int v3, v5

    iput v3, v0, Lcom/startapp/android/publish/ads/list3d/c;->d:I

    .line 254
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/c$1;->a:Lcom/startapp/android/publish/ads/list3d/c;

    iget v3, v0, Lcom/startapp/android/publish/ads/list3d/c;->f:I

    const-string v5, "mListTopOffset"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    int-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v1

    double-to-int v3, v5

    iput v3, v0, Lcom/startapp/android/publish/ads/list3d/c;->f:I

    .line 256
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/c$1;->a:Lcom/startapp/android/publish/ads/list3d/c;

    const-string v3, "mDynamics"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/startapp/android/publish/ads/list3d/Dynamics;

    iput-object v3, v0, Lcom/startapp/android/publish/ads/list3d/c;->j:Lcom/startapp/android/publish/ads/list3d/Dynamics;

    .line 258
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/c$1;->a:Lcom/startapp/android/publish/ads/list3d/c;

    iget v3, v0, Lcom/startapp/android/publish/ads/list3d/c;->k:F

    const-string v5, "mLastVelocity"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v3

    iput v3, v0, Lcom/startapp/android/publish/ads/list3d/c;->k:F

    .line 260
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/c$1;->a:Lcom/startapp/android/publish/ads/list3d/c;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/list3d/c;->j:Lcom/startapp/android/publish/ads/list3d/Dynamics;

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/ads/list3d/Dynamics;->a(D)V

    const-string v0, "list"

    .line 262
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 263
    new-instance p2, Lcom/startapp/android/publish/ads/list3d/b;

    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/c$1;->a:Lcom/startapp/android/publish/ads/list3d/c;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/list3d/c;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/c$1;->a:Lcom/startapp/android/publish/ads/list3d/c;

    iget-object v9, v0, Lcom/startapp/android/publish/ads/list3d/c;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/c$1;->a:Lcom/startapp/android/publish/ads/list3d/c;

    iget-object v10, v0, Lcom/startapp/android/publish/ads/list3d/c;->o:Ljava/lang/String;

    const-string v8, "home"

    move-object v5, p2

    invoke-direct/range {v5 .. v10}, Lcom/startapp/android/publish/ads/list3d/b;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/c$1;->a:Lcom/startapp/android/publish/ads/list3d/c;

    invoke-virtual {v0, p2}, Lcom/startapp/android/publish/ads/list3d/c;->setAdapter(Landroid/widget/Adapter;)V

    .line 266
    iget-object p2, p0, Lcom/startapp/android/publish/ads/list3d/c$1;->a:Lcom/startapp/android/publish/ads/list3d/c;

    iput-boolean v4, p2, Lcom/startapp/android/publish/ads/list3d/c;->l:Z

    .line 267
    iget-object p2, p0, Lcom/startapp/android/publish/ads/list3d/c$1;->a:Lcom/startapp/android/publish/ads/list3d/c;

    iput-boolean v4, p2, Lcom/startapp/android/publish/ads/list3d/c;->m:Z

    .line 269
    iget-object p2, p0, Lcom/startapp/android/publish/ads/list3d/c$1;->a:Lcom/startapp/android/publish/ads/list3d/c;

    iget v0, p2, Lcom/startapp/android/publish/ads/list3d/c;->k:F

    invoke-virtual {p2, v0, v4}, Lcom/startapp/android/publish/ads/list3d/c;->a(FZ)V

    .line 271
    invoke-static {p1}, Lcom/startapp/common/b;->a(Landroid/content/Context;)Lcom/startapp/common/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/startapp/common/b;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
