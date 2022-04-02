.class public Lcom/yandex/metrica/YandexMetricaConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/YandexMetricaConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Boolean;

.field private f:Landroid/location/Location;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/lang/Boolean;

.field private i:Ljava/lang/Boolean;

.field private j:Lcom/yandex/metrica/PreloadInfo;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->k:Ljava/util/Map;

    .line 95
    invoke-static {p1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/String;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/String;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic d(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->d:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic e(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic f(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Landroid/location/Location;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->f:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic g(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->g:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic h(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->h:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic i(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->i:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic j(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Lcom/yandex/metrica/PreloadInfo;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->j:Lcom/yandex/metrica/PreloadInfo;

    return-object p0
.end method

.method static synthetic k(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/util/Map;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->k:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic l(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->l:Z

    return p0
.end method


# virtual methods
.method public handleFirstActivationAsUpdate(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .registers 2

    .line 281
    iput-boolean p1, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->l:Z

    return-object p0
.end method

.method public putErrorEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .registers 4

    .line 270
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->k:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setAppVersion(Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .registers 3

    const-string v0, "App Version"

    .line 114
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iput-object p1, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setCollectInstalledApps(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .registers 2

    .line 248
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->h:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .registers 2

    .line 215
    iput-object p1, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->f:Landroid/location/Location;

    return-object p0
.end method

.method public setLogEnabled()Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .registers 2

    const/4 v0, 0x1

    .line 192
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->i:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setPreloadInfo(Lcom/yandex/metrica/PreloadInfo;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .registers 2

    .line 258
    iput-object p1, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->j:Lcom/yandex/metrica/PreloadInfo;

    return-object p0
.end method

.method public setReportCrashesEnabled(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .registers 2

    .line 163
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->d:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setReportNativeCrashesEnabled(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .registers 2

    .line 182
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setSessionTimeout(I)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .registers 2

    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTrackLocationEnabled(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .registers 2

    .line 233
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->g:Ljava/lang/Boolean;

    return-object p0
.end method
