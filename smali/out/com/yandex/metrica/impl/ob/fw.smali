.class public Lcom/yandex/metrica/impl/ob/fw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private final c:I

.field private final d:F


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x9c4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 32
    invoke-direct {p0, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/fw;-><init>(IIF)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .registers 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/yandex/metrica/impl/ob/fw;->a:I

    .line 43
    iput p2, p0, Lcom/yandex/metrica/impl/ob/fw;->c:I

    .line 44
    iput p3, p0, Lcom/yandex/metrica/impl/ob/fw;->d:F

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 48
    iget v0, p0, Lcom/yandex/metrica/impl/ob/fw;->a:I

    return v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/fr;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/metrica/impl/ob/fr;
        }
    .end annotation

    .line 60
    iget v0, p0, Lcom/yandex/metrica/impl/ob/fw;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yandex/metrica/impl/ob/fw;->b:I

    .line 61
    iget v0, p0, Lcom/yandex/metrica/impl/ob/fw;->a:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget v2, p0, Lcom/yandex/metrica/impl/ob/fw;->d:F

    mul-float v0, v0, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/yandex/metrica/impl/ob/fw;->a:I

    .line 62
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fw;->b()Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    .line 63
    :cond_19
    throw p1
.end method

.method protected b()Z
    .registers 3

    .line 71
    iget v0, p0, Lcom/yandex/metrica/impl/ob/fw;->b:I

    iget v1, p0, Lcom/yandex/metrica/impl/ob/fw;->c:I

    if-gt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method
