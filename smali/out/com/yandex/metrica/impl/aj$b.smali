.class Lcom/yandex/metrica/impl/aj$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ak;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/ak;)V
    .registers 2

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p1, p0, Lcom/yandex/metrica/impl/aj$b;->a:Lcom/yandex/metrica/impl/ak;

    .line 245
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ak;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/aj$b;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ak;B)V
    .registers 3

    .line 237
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/aj$b;-><init>(Lcom/yandex/metrica/impl/ak;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/aj$b;)Lcom/yandex/metrica/impl/ak;
    .registers 1

    .line 237
    iget-object p0, p0, Lcom/yandex/metrica/impl/aj$b;->a:Lcom/yandex/metrica/impl/ak;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1c

    .line 254
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 258
    :cond_11
    check-cast p1, Lcom/yandex/metrica/impl/aj$b;

    .line 260
    iget-object v0, p0, Lcom/yandex/metrica/impl/aj$b;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/yandex/metrica/impl/aj$b;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 265
    iget-object v0, p0, Lcom/yandex/metrica/impl/aj$b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
