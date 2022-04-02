.class public Lcom/yandex/metrica/impl/ob/do;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:I

.field private final b:I

.field private c:Z


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/yandex/metrica/impl/ob/do;->a:I

    .line 16
    iput p1, p0, Lcom/yandex/metrica/impl/ob/do;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 24
    iget v0, p0, Lcom/yandex/metrica/impl/ob/do;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yandex/metrica/impl/ob/do;->a:I

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/do;->c:Z

    return-void
.end method

.method public b()Z
    .registers 3

    .line 20
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/do;->c:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/yandex/metrica/impl/ob/do;->a:I

    iget v1, p0, Lcom/yandex/metrica/impl/ob/do;->b:I

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/do;->c:Z

    return-void
.end method
