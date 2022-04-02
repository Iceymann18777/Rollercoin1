.class public Lcom/yandex/metrica/impl/utils/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/utils/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/yandex/metrica/impl/utils/f$a;->a:I

    .line 30
    iput p2, p0, Lcom/yandex/metrica/impl/utils/f$a;->b:I

    .line 31
    iput p3, p0, Lcom/yandex/metrica/impl/utils/f$a;->c:I

    return-void
.end method

.method public static d()Lcom/yandex/metrica/impl/utils/f$a;
    .registers 4

    .line 47
    new-instance v0, Lcom/yandex/metrica/impl/utils/f$a;

    const/16 v1, 0x1e

    const/16 v2, 0x32

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/utils/f$a;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 35
    iget v0, p0, Lcom/yandex/metrica/impl/utils/f$a;->a:I

    return v0
.end method

.method public b()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/yandex/metrica/impl/utils/f$a;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    .line 43
    iget v0, p0, Lcom/yandex/metrica/impl/utils/f$a;->c:I

    return v0
.end method
