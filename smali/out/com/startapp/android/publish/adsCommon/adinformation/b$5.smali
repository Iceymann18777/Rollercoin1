.class Lcom/startapp/android/publish/adsCommon/adinformation/b$5;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/adsCommon/adinformation/b;->b(Landroid/view/ViewGroup;Landroid/graphics/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic c:Lcom/startapp/android/publish/adsCommon/adinformation/b;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/adsCommon/adinformation/b;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout$LayoutParams;)V
    .registers 4

    .line 321
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/b$5;->c:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    iput-object p2, p0, Lcom/startapp/android/publish/adsCommon/adinformation/b$5;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/startapp/android/publish/adsCommon/adinformation/b$5;->b:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 324
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/b$5;->c:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    iget-object v0, v0, Lcom/startapp/android/publish/adsCommon/adinformation/b;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/b$5;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/adinformation/b$5;->b:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
