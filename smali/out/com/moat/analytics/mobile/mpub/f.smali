.class Lcom/moat/analytics/mobile/mpub/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/moat/analytics/mobile/mpub/WebAdTracker;

.field private static b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/moat/analytics/mobile/mpub/f;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .registers 4

    sget-object v0, Lcom/moat/analytics/mobile/mpub/f;->a:Lcom/moat/analytics/mobile/mpub/WebAdTracker;

    if-eqz v0, :cond_1a

    const/4 v0, 0x3

    sget-object v1, Lcom/moat/analytics/mobile/mpub/f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "GMAInterstitialHelper"

    const-string v3, "Stopping to track GMA interstitial"

    invoke-static {v0, v2, v1, v3}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/moat/analytics/mobile/mpub/f;->a:Lcom/moat/analytics/mobile/mpub/WebAdTracker;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/mpub/WebAdTracker;->stopTracking()V

    const/4 v0, 0x0

    sput-object v0, Lcom/moat/analytics/mobile/mpub/f;->a:Lcom/moat/analytics/mobile/mpub/WebAdTracker;

    :cond_1a
    return-void
.end method

.method static a(Landroid/app/Activity;)V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/moat/analytics/mobile/mpub/w;->a()Lcom/moat/analytics/mobile/mpub/w;

    move-result-object v0

    iget-object v0, v0, Lcom/moat/analytics/mobile/mpub/w;->a:Lcom/moat/analytics/mobile/mpub/w$d;

    sget-object v1, Lcom/moat/analytics/mobile/mpub/w$d;->a:Lcom/moat/analytics/mobile/mpub/w$d;

    if-ne v0, v1, :cond_b

    return-void

    :cond_b
    invoke-static {p0}, Lcom/moat/analytics/mobile/mpub/f;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_54

    sget-object v0, Lcom/moat/analytics/mobile/mpub/f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/moat/analytics/mobile/mpub/f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_64

    :cond_21
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_64

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/mpub/ab;->a(Landroid/view/ViewGroup;Z)Lcom/moat/analytics/mobile/mpub/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/mpub/a/b/a;->c()Z

    move-result v1

    if-eqz v1, :cond_4b

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/moat/analytics/mobile/mpub/f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/mpub/a/b/a;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebView;

    invoke-static {p0}, Lcom/moat/analytics/mobile/mpub/f;->a(Landroid/webkit/WebView;)V

    goto :goto_64

    :cond_4b
    const/4 v0, 0x3

    const-string v1, "GMAInterstitialHelper"

    const-string v2, "Sorry, no WebView in this activity"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_64

    :cond_54
    invoke-static {}, Lcom/moat/analytics/mobile/mpub/f;->a()V

    new-instance p0, Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lcom/moat/analytics/mobile/mpub/f;->b:Ljava/lang/ref/WeakReference;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5f} :catch_60

    goto :goto_64

    :catch_60
    move-exception p0

    invoke-static {p0}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/Exception;)V

    :cond_64
    :goto_64
    return-void
.end method

.method private static a(Landroid/webkit/WebView;)V
    .registers 5

    sget-object v0, Lcom/moat/analytics/mobile/mpub/f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "GMAInterstitialHelper"

    const-string v3, "Starting to track GMA interstitial"

    invoke-static {v1, v2, v0, v3}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/MoatFactory;->create()Lcom/moat/analytics/mobile/mpub/MoatFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/moat/analytics/mobile/mpub/MoatFactory;->createWebAdTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/mpub/WebAdTracker;

    move-result-object p0

    sput-object p0, Lcom/moat/analytics/mobile/mpub/f;->a:Lcom/moat/analytics/mobile/mpub/WebAdTracker;

    invoke-interface {p0}, Lcom/moat/analytics/mobile/mpub/WebAdTracker;->startTracking()V

    return-void
.end method

.method private static b(Landroid/app/Activity;)Z
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "GMAInterstitialHelper"

    invoke-static {v2, v3, p0, v1}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "com.google.android.gms.ads.AdActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
