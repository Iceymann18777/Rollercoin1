.class Lcom/startapp/android/publish/ads/list3d/c$2;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/list3d/c;->e()V
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

    .line 337
    iput-object p1, p0, Lcom/startapp/android/publish/ads/list3d/c$2;->a:Lcom/startapp/android/publish/ads/list3d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/high16 v6, -0x3e600000    # -20.0f

    const/4 v7, 0x0

    .line 341
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lcom/startapp/android/publish/ads/list3d/c$2;->a:Lcom/startapp/android/publish/ads/list3d/c;

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/ads/list3d/c;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v8, -0x3e600000    # -20.0f

    const/4 v9, 0x0

    .line 351
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 358
    iget-object v1, p0, Lcom/startapp/android/publish/ads/list3d/c$2;->a:Lcom/startapp/android/publish/ads/list3d/c;

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/ads/list3d/c;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method
