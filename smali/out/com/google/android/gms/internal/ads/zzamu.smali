.class public final Lcom/google/android/gms/internal/ads/zzamu;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# static fields
.field private static final zzcup:Ljava/lang/String;

.field private static final zzcuq:Ljava/lang/String;

.field private static final zzcur:Ljava/lang/String;

.field private static final zzcus:Ljava/lang/String;

.field private static final zzcut:Ljava/lang/String;

.field private static final zzcuu:Ljava/lang/String;

.field public static final zzsy:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzamu;->zzsy:Landroid/os/Handler;

    const-class v0, Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzamu;->zzcup:Ljava/lang/String;

    const-class v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzamu;->zzcuq:Ljava/lang/String;

    const-class v0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzamu;->zzcur:Ljava/lang/String;

    const-class v0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzamu;->zzcus:Ljava/lang/String;

    const-class v0, Lcom/google/android/gms/ads/search/SearchAdView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzamu;->zzcut:Ljava/lang/String;

    const-class v0, Lcom/google/android/gms/ads/AdLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzamu;->zzcuu:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;I)I
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/util/DisplayMetrics;I)I

    move-result p0

    return p0
.end method

.method public static zza(Landroid/util/DisplayMetrics;I)I
    .registers 3

    int-to-float p1, p1

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static zza([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v1, v0, 0x1

    array-length v2, p0

    const/4 v3, 0x0

    if-ge v1, v2, :cond_52

    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "loadAd"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    sget-object v0, Lcom/google/android/gms/internal/ads/zzamu;->zzcup:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_49

    sget-object v0, Lcom/google/android/gms/internal/ads/zzamu;->zzcuq:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_49

    sget-object v0, Lcom/google/android/gms/internal/ads/zzamu;->zzcur:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_49

    sget-object v0, Lcom/google/android/gms/internal/ads/zzamu;->zzcus:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_49

    sget-object v0, Lcom/google/android/gms/internal/ads/zzamu;->zzcut:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_49

    sget-object v0, Lcom/google/android/gms/internal/ads/zzamu;->zzcuu:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    :cond_49
    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    goto :goto_53

    :cond_50
    move v0, v1

    goto :goto_1

    :cond_52
    move-object p0, v3

    :goto_53
    if-eqz p1, :cond_92

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "."

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x2

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_89

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6f
    add-int/lit8 p1, v4, -0x1

    if-lez v4, :cond_85

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_85

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, p1

    goto :goto_6f

    :cond_85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_89
    if-eqz p0, :cond_92

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_92

    return-object p0

    :cond_92
    return-object v3
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZLcom/google/android/gms/internal/ads/zzamx;)V
    .registers 8

    if-eqz p4, :cond_46

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    if-nez p4, :cond_9

    move-object p4, p0

    :cond_9
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "os"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "api"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    const-string v0, "appid"

    invoke-virtual {p3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_41

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result p0

    const/16 p1, 0x14

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".12451000"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_41
    const-string p0, "js"

    invoke-virtual {p3, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    new-instance p0, Landroid/net/Uri$Builder;

    invoke-direct {p0}, Landroid/net/Uri$Builder;-><init>()V

    const-string p1, "https"

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p1, "//pagead2.googlesyndication.com/pagead/gen_204"

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p1, "id"

    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_65
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_79

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p2, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_65

    :cond_79
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p5, p0}, Lcom/google/android/gms/internal/ads/zzamx;->zzcz(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;II)V
    .registers 10

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, p5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const/4 p4, 0x3

    invoke-static {v0, p4}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/content/Context;I)I

    move-result p4

    new-instance p5, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzjn;->widthPixels:I

    sub-int/2addr v0, p4

    iget v3, p2, Lcom/google/android/gms/internal/ads/zzjn;->heightPixels:I

    sub-int/2addr v3, p4

    invoke-direct {p5, v0, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p3, v1, p5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget p4, p2, Lcom/google/android/gms/internal/ads/zzjn;->widthPixels:I

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzjn;->heightPixels:I

    invoke-virtual {p1, p3, p4, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public static zza(ZLjava/net/HttpURLConnection;Ljava/lang/String;)V
    .registers 4

    const p0, 0xea60

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    if-eqz p2, :cond_14

    const-string p0, "User-Agent"

    invoke-virtual {p1, p0, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    return-void
.end method

.method public static zzb(Landroid/content/Context;I)I
    .registers 3

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzamu;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result p0

    return p0
.end method

.method public static zzb(Landroid/util/DisplayMetrics;I)I
    .registers 2

    int-to-float p1, p1

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static zzbc(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_e

    :cond_8
    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_e
    if-eqz p0, :cond_16

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzamu;->zzsg()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const-string p0, "emulator"

    :cond_18
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzamu;->zzde(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzbd(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzbe(Landroid/content/Context;)Z
    .registers 3

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    const v1, 0xbdfcb8

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result p0

    if-nez p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static zzbf(Landroid/content/Context;)I
    .registers 2

    const-string v0, "com.google.android.gms.ads.dynamite"

    invoke-static {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static zzbg(Landroid/content/Context;)I
    .registers 2

    const-string v0, "com.google.android.gms.ads.dynamite"

    invoke-static {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static zzbh(Landroid/content/Context;)Z
    .registers 3

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    const v1, 0xbdfcb8

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result p0

    if-eqz p0, :cond_13

    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static zzbi(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    return v1

    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p0

    float-to-int p0, v0

    const/16 v0, 0x258

    if-ge p0, v0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    return v1
.end method

.method public static zzbj(Landroid/content/Context;)Z
    .registers 7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR1()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_4f

    :cond_23
    :try_start_23
    const-class v1, Landroid/view/Display;

    const-string v3, "getRawHeight"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-class v3, Landroid/view/Display;

    const-string v4, "getRawWidth"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_4f} :catch_5c

    :goto_4f
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne p0, v1, :cond_5c

    if-ne v0, v3, :cond_5c

    const/4 p0, 0x1

    return p0

    :catch_5c
    :cond_5c
    return v2
.end method

.method public static zzbk(Landroid/content/Context;)I
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_width"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_19

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public static zzc(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 14

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzauj:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    return-object p0

    :cond_13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :goto_18
    if-eqz p0, :cond_22

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_18

    :cond_22
    const/4 p0, 0x0

    :cond_23
    :goto_23
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b2

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/lang/StackTraceElement;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "<filtered>"

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v6, v7}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v4, v2

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_4f
    if-ge v8, v4, :cond_8d

    aget-object v10, v2, v8

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzamu;->zzdf(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_62

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    goto :goto_8a

    :cond_62
    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7e

    const-string v12, "android."

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7c

    const-string v12, "java."

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7e

    :cond_7c
    const/4 v11, 0x1

    goto :goto_7f

    :cond_7e
    const/4 v11, 0x0

    :goto_7f
    if-eqz v11, :cond_82

    goto :goto_87

    :cond_82
    new-instance v10, Ljava/lang/StackTraceElement;

    invoke-direct {v10, v6, v6, v6, v7}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_87
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8a
    add-int/lit8 v8, v8, 0x1

    goto :goto_4f

    :cond_8d
    if-eqz v9, :cond_23

    if-nez p0, :cond_9b

    new-instance p0, Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    goto :goto_a5

    :cond_9b
    new-instance v2, Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v2

    :goto_a5
    new-array v1, v5, [Ljava/lang/StackTraceElement;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    goto/16 :goto_23

    :cond_b2
    return-object p0
.end method

.method public static zzde(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2e

    :try_start_6
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%032X"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    new-instance v8, Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-direct {v8, v6, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v8, v7, v0

    invoke-static {v4, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_29
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_29} :catch_2b
    .catch Ljava/lang/ArithmeticException; {:try_start_6 .. :try_end_29} :catch_2a

    return-object p0

    :catch_2a
    return-object v3

    :catch_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2e
    return-object v3
.end method

.method public static zzdf(Ljava/lang/String;)Z
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzauk:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    :try_start_1c
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/google/android/gms/internal/ads/zzadh;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_26} :catch_27

    return p0

    :catch_27
    move-exception v0

    const-string v2, "Fail to check class type for class "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_39

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3e

    :cond_39
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3e
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzane;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public static zzsg()Z
    .registers 2

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static zzsh()Z
    .registers 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public static zzsi()Ljava/lang/String;
    .registers 9

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_28
    const/4 v6, 0x2

    if-ge v5, v6, :cond_4e

    :try_start_2b
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v6, v0}, Ljava/security/MessageDigest;->update([B)V

    const/16 v7, 0x8

    new-array v8, v7, [B

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    invoke-static {v6, v4, v8, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v3, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v6}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_4b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2b .. :try_end_4b} :catch_4b

    :catch_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :cond_4e
    return-object v2
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .registers 12

    new-instance v5, Lcom/google/android/gms/internal/ads/zzamv;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/ads/zzamv;-><init>(Lcom/google/android/gms/internal/ads/zzamu;)V

    const/4 v1, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZLcom/google/android/gms/internal/ads/zzamx;)V

    return-void
.end method

.method public final zza(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;)V
    .registers 10

    const/high16 v4, -0x1000000

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;II)V

    return-void
.end method

.method public final zza(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    const/high16 v4, -0x10000

    const/high16 v5, -0x1000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;II)V

    return-void
.end method
