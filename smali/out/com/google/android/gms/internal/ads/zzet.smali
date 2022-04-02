.class public final Lcom/google/android/gms/internal/ads/zzet;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private zzaaq:Z

.field private zzadz:Lcom/google/android/gms/internal/ads/zzamj;

.field private final zzaeo:Landroid/content/Context;

.field private final zzaeq:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/zzajh;",
            ">;"
        }
    .end annotation
.end field

.field private zzaer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaes:Lcom/google/android/gms/internal/ads/zzgd;

.field protected final zzaet:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzaeu:Landroid/view/WindowManager;

.field private final zzaev:Landroid/os/PowerManager;

.field private final zzaew:Landroid/app/KeyguardManager;

.field private final zzaex:Landroid/util/DisplayMetrics;

.field private zzaey:Lcom/google/android/gms/internal/ads/zzfa;

.field private zzaez:Z

.field private zzafa:Z

.field private zzafb:Z

.field private zzafc:Z

.field private zzafd:Z

.field private zzafe:Landroid/content/BroadcastReceiver;

.field private final zzaff:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/ads/zzeq;",
            ">;"
        }
    .end annotation
.end field

.field private final zzafg:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/ads/zzfo;",
            ">;"
        }
    .end annotation
.end field

.field private final zzafh:Landroid/graphics/Rect;

.field private final zzafi:Lcom/google/android/gms/internal/ads/zzew;

.field private zzafj:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzjn;Lcom/google/android/gms/internal/ads/zzajh;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/internal/ads/zzgd;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaaq:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafa:Z

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaff:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafg:Ljava/util/HashSet;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafh:Landroid/graphics/Rect;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaeq:Ljava/lang/ref/WeakReference;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaes:Lcom/google/android/gms/internal/ads/zzgd;

    new-instance p5, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {p5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaer:Ljava/lang/ref/WeakReference;

    const/4 p5, 0x1

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafb:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafd:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamj;

    const-wide/16 v1, 0xc8

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzamj;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzadz:Lcom/google/android/gms/internal/ads/zzamj;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p2, Lcom/google/android/gms/internal/ads/zzjn;->zzarb:Ljava/lang/String;

    iget-object v7, p3, Lcom/google/android/gms/internal/ads/zzajh;->zzcob:Lorg/json/JSONObject;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzajh;->zzfz()Z

    move-result v8

    iget-boolean v9, p2, Lcom/google/android/gms/internal/ads/zzjn;->zzare:Z

    move-object v3, v0

    move-object v5, p4

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzer;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzang;Ljava/lang/String;Lorg/json/JSONObject;ZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaet:Lcom/google/android/gms/internal/ads/zzer;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaeu:Landroid/view/WindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "power"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaev:Landroid/os/PowerManager;

    const-string p2, "keyguard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/KeyguardManager;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaew:Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaeo:Landroid/content/Context;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzew;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/zzew;-><init>(Lcom/google/android/gms/internal/ads/zzet;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafi:Lcom/google/android/gms/internal/ads/zzew;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaeo:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object p3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafi:Lcom/google/android/gms/internal/ads/zzew;

    invoke-virtual {p2, p3, p5, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaex:Landroid/util/DisplayMetrics;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaeu:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafh:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->right:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafh:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzet;->zzgb()V

    return-void
.end method

.method private final isScreenOn()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaev:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    return v0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaev:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method private static zza(ILandroid/util/DisplayMetrics;)I
    .registers 2

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    int-to-float p0, p0

    div-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private final zza(Landroid/view/View;Ljava/lang/Boolean;)Lorg/json/JSONObject;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "isVisible"

    const-string v4, "isAttachedToWindow"

    const/4 v5, 0x0

    if-nez v2, :cond_22

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzet;->zzgg()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzet;->isScreenOn()Z

    move-result v2

    const-string v4, "isScreenOn"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_22
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzem()Lcom/google/android/gms/internal/ads/zzakq;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzakq;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v6

    const/4 v0, 0x2

    new-array v7, v0, [I

    new-array v0, v0, [I

    :try_start_2f
    invoke-virtual {v2, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_35} :catch_36

    goto :goto_3c

    :catch_36
    move-exception v0

    const-string v8, "Failure getting view location."

    invoke-static {v8, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3c
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    aget v5, v7, v5

    iput v5, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    aget v5, v7, v5

    iput v5, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v5, v7

    iput v5, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v5, v7

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v7

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v8}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v9

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v10}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzet;->zzgg()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowVisibility()I

    move-result v12

    const-string v13, "windowVisibility"

    invoke-virtual {v11, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzet;->zzafh:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzet;->zzaex:Landroid/util/DisplayMetrics;

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzet;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v12

    const-string v13, "top"

    invoke-virtual {v6, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzet;->zzafh:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzet;->zzaex:Landroid/util/DisplayMetrics;

    invoke-static {v12, v14}, Lcom/google/android/gms/internal/ads/zzet;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v12

    const-string v14, "bottom"

    invoke-virtual {v6, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzet;->zzafh:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzet;->zzaex:Landroid/util/DisplayMetrics;

    invoke-static {v12, v15}, Lcom/google/android/gms/internal/ads/zzet;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v12

    const-string v15, "left"

    invoke-virtual {v6, v15, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzet;->zzafh:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v16, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzet;->zzaex:Landroid/util/DisplayMetrics;

    invoke-static {v12, v3}, Lcom/google/android/gms/internal/ads/zzet;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v3

    const-string v12, "right"

    invoke-virtual {v6, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "viewBox"

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v17, v11

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzet;->zzaex:Landroid/util/DisplayMetrics;

    invoke-static {v6, v11}, Lcom/google/android/gms/internal/ads/zzet;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzet;->zzaex:Landroid/util/DisplayMetrics;

    invoke-static {v6, v11}, Lcom/google/android/gms/internal/ads/zzet;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v14, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzet;->zzaex:Landroid/util/DisplayMetrics;

    invoke-static {v6, v11}, Lcom/google/android/gms/internal/ads/zzet;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v15, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzet;->zzaex:Landroid/util/DisplayMetrics;

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzet;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v0

    invoke-virtual {v4, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "adBox"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget v4, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzet;->zzaex:Landroid/util/DisplayMetrics;

    invoke-static {v4, v6}, Lcom/google/android/gms/internal/ads/zzet;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v3, v13, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    iget v4, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzet;->zzaex:Landroid/util/DisplayMetrics;

    invoke-static {v4, v6}, Lcom/google/android/gms/internal/ads/zzet;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v3, v14, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    iget v4, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzet;->zzaex:Landroid/util/DisplayMetrics;

    invoke-static {v4, v6}, Lcom/google/android/gms/internal/ads/zzet;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v3, v15, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    iget v4, v5, Landroid/graphics/Rect;->right:I

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzet;->zzaex:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzet;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v3, v12, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "globalVisibleBox"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "globalVisibleBoxVisible"

    invoke-virtual {v0, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget v4, v8, Landroid/graphics/Rect;->top:I

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzet;->zzaex:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzet;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v3, v13, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzet;->zzaex:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzet;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v3, v14, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    iget v4, v8, Landroid/graphics/Rect;->left:I

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzet;->zzaex:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzet;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v3, v15, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    iget v4, v8, Landroid/graphics/Rect;->right:I

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzet;->zzaex:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzet;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v3, v12, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "localVisibleBox"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "localVisibleBoxVisible"

    invoke-virtual {v0, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget v4, v10, Landroid/graphics/Rect;->top:I

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzet;->zzaex:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzet;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v3, v13, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    iget v4, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzet;->zzaex:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzet;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v3, v14, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    iget v4, v10, Landroid/graphics/Rect;->left:I

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzet;->zzaex:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzet;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v3, v15, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    iget v4, v10, Landroid/graphics/Rect;->right:I

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzet;->zzaex:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzet;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v3, v12, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "hitBox"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzet;->zzaex:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    float-to-double v3, v3

    const-string v5, "screenDensity"

    invoke-virtual {v0, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    if-nez p2, :cond_1ed

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v0

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzet;->zzaev:Landroid/os/PowerManager;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzet;->zzaew:Landroid/app/KeyguardManager;

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzakk;->zza(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1ef

    :cond_1ed
    move-object/from16 v0, p2

    :goto_1ef
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move-object/from16 v3, v16

    move-object/from16 v2, v17

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v2
.end method

.method private static zza(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p0, "units"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1
.end method

.method private final zza(Lorg/json/JSONObject;Z)V
    .registers 7

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzet;->zza(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafg:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfo;

    invoke-interface {v3, p1, p2}, Lcom/google/android/gms/internal/ads/zzfo;->zzb(Lorg/json/JSONObject;Z)V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_21

    goto :goto_12

    :cond_20
    return-void

    :catchall_21
    move-exception p1

    const-string p2, "Skipping active view message."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzgd()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaey:Lcom/google/android/gms/internal/ads/zzfa;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzfa;->zza(Lcom/google/android/gms/internal/ads/zzet;)V

    :cond_7
    return-void
.end method

.method private final zzgf()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_17

    :cond_11
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_17
    :goto_17
    return-void
.end method

.method private final zzgg()Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaet:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzfw()Ljava/lang/String;

    move-result-object v1

    const-string v2, "afmaVersion"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaet:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzfx()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "activeViewJSON"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzer()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "timestamp"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaet:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzfv()Ljava/lang/String;

    move-result-object v2

    const-string v3, "adFormat"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaet:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzfy()Ljava/lang/String;

    move-result-object v2

    const-string v3, "hashCode"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaet:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzfz()Z

    move-result v2

    const-string v3, "isMraid"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafa:Z

    const-string v3, "isStopped"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaaq:Z

    const-string v3, "isPaused"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaet:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzga()Z

    move-result v2

    const-string v3, "isNative"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzet;->isScreenOn()Z

    move-result v2

    const-string v3, "isScreenOn"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfj()Lcom/google/android/gms/internal/ads/zzalb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzalb;->zzdp()Z

    move-result v2

    const-string v3, "appMuted"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfj()Lcom/google/android/gms/internal/ads/zzalb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzalb;->zzdo()F

    move-result v2

    float-to-double v2, v2

    const-string v4, "appVolume"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafj:F

    float-to-double v2, v2

    const-string v4, "deviceVolume"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzet;->zzl(I)V

    return-void
.end method

.method public final onScrollChanged()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzet;->zzl(I)V

    return-void
.end method

.method public final pause()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaaq:Z

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzet;->zzl(I)V

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public final resume()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaaq:Z

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzet;->zzl(I)V

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public final stop()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafa:Z

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzet;->zzl(I)V

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzfa;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaey:Lcom/google/android/gms/internal/ads/zzfa;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzfo;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafg:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafe:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_11

    :goto_f
    monitor-exit v0

    goto :goto_33

    :cond_11
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeu;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzeu;-><init>(Lcom/google/android/gms/internal/ads/zzet;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafe:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfk()Lcom/google/android/gms/internal/ads/zzamq;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaeo:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafe:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzamq;->zza(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_38

    goto :goto_f

    :goto_33
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzet;->zzl(I)V

    goto :goto_3b

    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p1

    :cond_3b
    :goto_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafg:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :try_start_40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaes:Lcom/google/android/gms/internal/ads/zzgd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgd;->zzgh()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzet;->zza(Landroid/view/View;Ljava/lang/Boolean;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzet;->zza(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfo;->zzb(Lorg/json/JSONObject;Z)V
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_53} :catch_54

    return-void

    :catch_54
    move-exception p1

    const-string v0, "Skipping measurement update for new client."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzfo;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaet:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzer;->zzfy()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Received request to untrack: "

    if-eqz v0, :cond_17

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1c

    :cond_17
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1c
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzet;->zzb(Lcom/google/android/gms/internal/ads/zzfo;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfo;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafg:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfo;->zzgl()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafg:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_72

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzet;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzet;->zzgf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_6f

    :try_start_19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafe:Landroid/content/BroadcastReceiver;
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_6c

    if-eqz v1, :cond_3d

    :try_start_1d
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfk()Lcom/google/android/gms/internal/ads/zzamq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaeo:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafe:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzamq;->zza(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    :try_end_28
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_28} :catch_34
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_28} :catch_29
    .catchall {:try_start_1d .. :try_end_28} :catchall_6c

    goto :goto_3a

    :catch_29
    move-exception v1

    :try_start_2a
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object v2

    const-string v3, "ActiveViewUnit.stopScreenStatusMonitoring"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzajm;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_3a

    :catch_34
    move-exception v1

    const-string v2, "Failed trying to unregister the receiver"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafe:Landroid/content/BroadcastReceiver;

    :cond_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_2a .. :try_end_3e} :catchall_6c

    :try_start_3e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaeo:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafi:Lcom/google/android/gms/internal/ads/zzew;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafb:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzet;->zzgd()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafg:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_5c
    if-ge v0, v2, :cond_6a

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfo;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzet;->zzb(Lcom/google/android/gms/internal/ads/zzfo;)V

    goto :goto_5c

    :cond_6a
    monitor-exit p1
    :try_end_6b
    .catchall {:try_start_3e .. :try_end_6b} :catchall_6f

    return-void

    :catchall_6c
    move-exception v1

    :try_start_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    :try_start_6e
    throw v1

    :catchall_6f
    move-exception v0

    monitor-exit p1
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_6f

    throw v0

    :cond_72
    return-void
.end method

.method final zzc(Ljava/util/Map;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const-string v1, "hashCode"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaet:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzfy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    const/4 p1, 0x1

    return p1

    :cond_20
    return v0
.end method

.method final zzd(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzet;->zzl(I)V

    return-void
.end method

.method final zze(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "isVisible"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    :cond_9
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    goto :goto_24

    :cond_22
    const/4 p1, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 p1, 0x1

    :goto_25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaff:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzeq;

    invoke-interface {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzeq;->zza(Lcom/google/android/gms/internal/ads/zzet;Z)V

    goto :goto_2b

    :cond_3b
    return-void
.end method

.method public final zzgb()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaeo:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzalb;->zzay(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafj:F

    return-void
.end method

.method public final zzgc()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafb:Z

    if-eqz v1, :cond_44

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafc:Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_46

    :try_start_a
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzet;->zzgg()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "doneReasonCode"

    const-string v4, "u"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/internal/ads/zzet;->zza(Lorg/json/JSONObject;Z)V
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_18} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_18} :catch_19
    .catchall {:try_start_a .. :try_end_18} :catchall_46

    goto :goto_24

    :catch_19
    move-exception v1

    :try_start_1a
    const-string v2, "Failure while processing active view data."

    :goto_1c
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_24

    :catch_20
    move-exception v1

    const-string v2, "JSON failure while processing active view data."

    goto :goto_1c

    :goto_24
    const-string v1, "Untracking ad unit: "

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaet:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzfy()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3b

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_41

    :cond_3b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_41
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    :cond_44
    monitor-exit v0

    return-void

    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_1a .. :try_end_48} :catchall_46

    goto :goto_4a

    :goto_49
    throw v1

    :goto_4a
    goto :goto_49
.end method

.method public final zzge()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafb:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method protected final zzl(I)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafg:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzfo;->zzgk()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    if-eqz v1, :cond_ce

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafb:Z

    if-nez v1, :cond_28

    goto/16 :goto_ce

    :cond_28
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaes:Lcom/google/android/gms/internal/ads/zzgd;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzgd;->zzgh()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_40

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaev:Landroid/os/PowerManager;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaew:Landroid/app/KeyguardManager;

    invoke-virtual {v2, v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzakk;->zza(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    move-result v2

    if-eqz v2, :cond_40

    const/4 v2, 0x1

    goto :goto_41

    :cond_40
    const/4 v2, 0x0

    :goto_41
    if-eqz v1, :cond_53

    if-eqz v2, :cond_53

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v5

    if-eqz v5, :cond_53

    const/4 v5, 0x1

    goto :goto_54

    :cond_53
    const/4 v5, 0x0

    :goto_54
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaes:Lcom/google/android/gms/internal/ads/zzgd;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzgd;->zzgi()Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzet;->zzgc()V

    monitor-exit v0

    return-void

    :cond_61
    if-ne p1, v4, :cond_71

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzet;->zzadz:Lcom/google/android/gms/internal/ads/zzamj;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzamj;->tryAcquire()Z

    move-result v6

    if-nez v6, :cond_71

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafd:Z

    if-ne v5, v6, :cond_71

    monitor-exit v0

    return-void

    :cond_71
    if-nez v5, :cond_7b

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafd:Z

    if-nez v6, :cond_7b

    if-ne p1, v4, :cond_7b

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_3 .. :try_end_7a} :catchall_d0

    return-void

    :cond_7b
    :try_start_7b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/internal/ads/zzet;->zza(Landroid/view/View;Ljava/lang/Boolean;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzet;->zza(Lorg/json/JSONObject;Z)V

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzet;->zzafd:Z
    :try_end_88
    .catch Lorg/json/JSONException; {:try_start_7b .. :try_end_88} :catch_8b
    .catch Ljava/lang/RuntimeException; {:try_start_7b .. :try_end_88} :catch_89
    .catchall {:try_start_7b .. :try_end_88} :catchall_d0

    goto :goto_91

    :catch_89
    move-exception p1

    goto :goto_8c

    :catch_8b
    move-exception p1

    :goto_8c
    :try_start_8c
    const-string v1, "Active view update failed."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzakb;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_91
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaes:Lcom/google/android/gms/internal/ads/zzgd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgd;->zzgj()Lcom/google/android/gms/internal/ads/zzgd;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgd;->zzgh()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_c9

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eq p1, v1, :cond_c9

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzet;->zzgf()V

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaez:Z

    if-eqz v2, :cond_ba

    if-eqz v1, :cond_c2

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_c2

    :cond_ba
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaez:Z

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_c2
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzaer:Ljava/lang/ref/WeakReference;

    :cond_c9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzet;->zzgd()V

    monitor-exit v0

    return-void

    :cond_ce
    :goto_ce
    monitor-exit v0

    return-void

    :catchall_d0
    move-exception p1

    monitor-exit v0
    :try_end_d2
    .catchall {:try_start_8c .. :try_end_d2} :catchall_d0

    goto :goto_d4

    :goto_d3
    throw p1

    :goto_d4
    goto :goto_d3
.end method
