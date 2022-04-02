.class public final Lcom/yandex/metrica/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field b:Ljava/lang/Boolean;

.field private c:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

.field private d:Lcom/yandex/metrica/a;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Integer;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Integer;

.field private k:Ljava/lang/Integer;

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/Boolean;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/e$a;->l:Ljava/util/Map;

    .line 190
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig;->newConfigBuilder(Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/e$a;->c:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/e$a;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/yandex/metrica/e$a;->c:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    return-object p0
.end method

.method static synthetic b(Lcom/yandex/metrica/e$a;)Ljava/lang/String;
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/yandex/metrica/e$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/yandex/metrica/e$a;)Ljava/lang/Integer;
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/yandex/metrica/e$a;->h:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic d(Lcom/yandex/metrica/e$a;)Ljava/util/List;
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/yandex/metrica/e$a;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/yandex/metrica/e$a;)Ljava/lang/String;
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/yandex/metrica/e$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/yandex/metrica/e$a;)Lcom/yandex/metrica/a;
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/yandex/metrica/e$a;->d:Lcom/yandex/metrica/a;

    return-object p0
.end method

.method static synthetic g(Lcom/yandex/metrica/e$a;)Ljava/util/Map;
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/yandex/metrica/e$a;->i:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic h(Lcom/yandex/metrica/e$a;)Ljava/lang/Integer;
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/yandex/metrica/e$a;->k:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic i(Lcom/yandex/metrica/e$a;)Ljava/lang/Integer;
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/yandex/metrica/e$a;->j:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic j(Lcom/yandex/metrica/e$a;)Ljava/util/Map;
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/yandex/metrica/e$a;->l:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic k(Lcom/yandex/metrica/e$a;)Ljava/lang/Boolean;
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/yandex/metrica/e$a;->m:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/e$a;
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->c:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->setLogEnabled()Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    return-object p0
.end method

.method public a(I)Lcom/yandex/metrica/e$a;
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->c:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->setSessionTimeout(I)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    return-object p0
.end method

.method public a(Landroid/location/Location;)Lcom/yandex/metrica/e$a;
    .registers 3

    .line 313
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->c:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->setLocation(Landroid/location/Location;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    return-object p0
.end method

.method public a(Lcom/yandex/metrica/PreloadInfo;)Lcom/yandex/metrica/e$a;
    .registers 3

    .line 505
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->c:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->setPreloadInfo(Lcom/yandex/metrica/PreloadInfo;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    return-object p0
.end method

.method public a(Lcom/yandex/metrica/a;)Lcom/yandex/metrica/e$a;
    .registers 2

    .line 368
    iput-object p1, p0, Lcom/yandex/metrica/e$a;->d:Lcom/yandex/metrica/a;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/yandex/metrica/e$a;
    .registers 3

    .line 208
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->c:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->setAppVersion(Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/e$a;
    .registers 4

    .line 358
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->c:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->putErrorEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/yandex/metrica/e$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yandex/metrica/e$a;"
        }
    .end annotation

    .line 418
    iput-object p1, p0, Lcom/yandex/metrica/e$a;->g:Ljava/util/List;

    return-object p0
.end method

.method public a(Ljava/util/Map;Ljava/lang/Boolean;)Lcom/yandex/metrica/e$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/yandex/metrica/e$a;"
        }
    .end annotation

    .line 458
    iput-object p2, p0, Lcom/yandex/metrica/e$a;->m:Ljava/lang/Boolean;

    .line 459
    iput-object p1, p0, Lcom/yandex/metrica/e$a;->i:Ljava/util/Map;

    return-object p0
.end method

.method public a(Z)Lcom/yandex/metrica/e$a;
    .registers 3

    .line 261
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->c:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->setReportCrashesEnabled(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    return-object p0
.end method

.method public b(I)Lcom/yandex/metrica/e$a;
    .registers 6

    if-ltz p1, :cond_9

    .line 443
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/e$a;->h:Ljava/lang/Integer;

    return-object p0

    .line 439
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "App Build Number"

    aput-object v3, v1, v2

    const-string v2, "Invalid %1$s. %1$s should be positive."

    .line 440
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;)Lcom/yandex/metrica/e$a;
    .registers 2

    .line 242
    iput-object p1, p0, Lcom/yandex/metrica/e$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/e$a;
    .registers 4

    .line 535
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->l:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public b(Z)Lcom/yandex/metrica/e$a;
    .registers 3

    .line 280
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->c:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->setReportNativeCrashesEnabled(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    return-object p0
.end method

.method public b()Lcom/yandex/metrica/e;
    .registers 3

    .line 555
    new-instance v0, Lcom/yandex/metrica/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/e;-><init>(Lcom/yandex/metrica/e$a;B)V

    return-object v0
.end method

.method public c(I)Lcom/yandex/metrica/e$a;
    .registers 2

    .line 478
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/e$a;->k:Ljava/lang/Integer;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/yandex/metrica/e$a;
    .registers 2

    .line 381
    iput-object p1, p0, Lcom/yandex/metrica/e$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lcom/yandex/metrica/e$a;
    .registers 3

    .line 331
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->c:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->setTrackLocationEnabled(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    return-object p0
.end method

.method public d(I)Lcom/yandex/metrica/e$a;
    .registers 2

    .line 495
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/e$a;->j:Ljava/lang/Integer;

    return-object p0
.end method

.method public d(Z)Lcom/yandex/metrica/e$a;
    .registers 3

    .line 346
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->c:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->setCollectInstalledApps(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    return-object p0
.end method

.method public e(Z)Lcom/yandex/metrica/e$a;
    .registers 3

    .line 516
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->c:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->handleFirstActivationAsUpdate(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    return-object p0
.end method
