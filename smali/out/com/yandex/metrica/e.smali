.class public Lcom/yandex/metrica/e;
.super Lcom/yandex/metrica/YandexMetricaConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/e$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/a;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Integer;

.field private final g:Ljava/lang/Integer;

.field private final h:Ljava/lang/Integer;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/lang/Boolean;

.field private final k:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/e$a;)V
    .registers 5

    .line 560
    invoke-static {p1}, Lcom/yandex/metrica/e$a;->a(Lcom/yandex/metrica/e$a;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yandex/metrica/YandexMetricaConfig;-><init>(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)V

    .line 561
    invoke-static {p1}, Lcom/yandex/metrica/e$a;->b(Lcom/yandex/metrica/e$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/e;->d:Ljava/lang/String;

    .line 562
    invoke-static {p1}, Lcom/yandex/metrica/e$a;->c(Lcom/yandex/metrica/e$a;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/e;->f:Ljava/lang/Integer;

    .line 565
    invoke-static {p1}, Lcom/yandex/metrica/e$a;->d(Lcom/yandex/metrica/e$a;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    invoke-static {p1}, Lcom/yandex/metrica/e$a;->d(Lcom/yandex/metrica/e$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 566
    invoke-static {p1}, Lcom/yandex/metrica/e$a;->d(Lcom/yandex/metrica/e$a;)Ljava/util/List;

    move-result-object v0

    goto :goto_41

    .line 567
    :cond_29
    invoke-static {p1}, Lcom/yandex/metrica/e$a;->e(Lcom/yandex/metrica/e$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 569
    invoke-static {p1}, Lcom/yandex/metrica/e$a;->e(Lcom/yandex/metrica/e$a;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_40
    move-object v0, v1

    :goto_41
    if-nez v0, :cond_44

    goto :goto_48

    .line 571
    :cond_44
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_48
    iput-object v1, p0, Lcom/yandex/metrica/e;->e:Ljava/util/List;

    .line 573
    invoke-static {p1}, Lcom/yandex/metrica/e$a;->f(Lcom/yandex/metrica/e$a;)Lcom/yandex/metrica/a;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/e;->a:Lcom/yandex/metrica/a;

    .line 574
    invoke-static {p1}, Lcom/yandex/metrica/e$a;->g(Lcom/yandex/metrica/e$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/e;->b:Ljava/util/Map;

    .line 575
    invoke-static {p1}, Lcom/yandex/metrica/e$a;->h(Lcom/yandex/metrica/e$a;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/e;->h:Ljava/lang/Integer;

    .line 576
    invoke-static {p1}, Lcom/yandex/metrica/e$a;->i(Lcom/yandex/metrica/e$a;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/e;->g:Ljava/lang/Integer;

    .line 577
    iget-object v0, p1, Lcom/yandex/metrica/e$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/e;->c:Ljava/lang/String;

    .line 578
    invoke-static {p1}, Lcom/yandex/metrica/e$a;->j(Lcom/yandex/metrica/e$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/e;->i:Ljava/util/Map;

    .line 579
    invoke-static {p1}, Lcom/yandex/metrica/e$a;->k(Lcom/yandex/metrica/e$a;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/e;->j:Ljava/lang/Boolean;

    .line 580
    iget-object p1, p1, Lcom/yandex/metrica/e$a;->b:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/yandex/metrica/e;->k:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/e$a;B)V
    .registers 3

    .line 31
    invoke-direct {p0, p1}, Lcom/yandex/metrica/e;-><init>(Lcom/yandex/metrica/e$a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/yandex/metrica/e$a;
    .registers 2

    .line 85
    new-instance v0, Lcom/yandex/metrica/e$a;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/e$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 592
    iget-object v0, p0, Lcom/yandex/metrica/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 615
    iget-object v0, p0, Lcom/yandex/metrica/e;->e:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/lang/Integer;
    .registers 2

    .line 627
    iget-object v0, p0, Lcom/yandex/metrica/e;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public e()Lcom/yandex/metrica/a;
    .registers 2

    .line 635
    iget-object v0, p0, Lcom/yandex/metrica/e;->a:Lcom/yandex/metrica/a;

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 644
    iget-object v0, p0, Lcom/yandex/metrica/e;->b:Ljava/util/Map;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 653
    iget-object v0, p0, Lcom/yandex/metrica/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/Integer;
    .registers 2

    .line 664
    iget-object v0, p0, Lcom/yandex/metrica/e;->h:Ljava/lang/Integer;

    return-object v0
.end method

.method public i()Ljava/lang/Integer;
    .registers 2

    .line 675
    iget-object v0, p0, Lcom/yandex/metrica/e;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method public j()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 687
    iget-object v0, p0, Lcom/yandex/metrica/e;->i:Ljava/util/Map;

    return-object v0
.end method

.method public k()Ljava/lang/Boolean;
    .registers 2

    .line 695
    iget-object v0, p0, Lcom/yandex/metrica/e;->j:Ljava/lang/Boolean;

    return-object v0
.end method

.method public l()Ljava/lang/Boolean;
    .registers 2

    .line 703
    iget-object v0, p0, Lcom/yandex/metrica/e;->k:Ljava/lang/Boolean;

    return-object v0
.end method
