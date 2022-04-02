.class public final Lcom/yandex/metrica/impl/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .registers 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/yandex/metrica/impl/a$a;->a:Ljava/lang/String;

    .line 47
    iput-wide p2, p0, Lcom/yandex/metrica/impl/a$a;->b:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2d

    .line 55
    :cond_12
    check-cast p1, Lcom/yandex/metrica/impl/a$a;

    .line 57
    iget-wide v2, p0, Lcom/yandex/metrica/impl/a$a;->b:J

    iget-wide v4, p1, Lcom/yandex/metrica/impl/a$a;->b:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1d

    return v1

    .line 58
    :cond_1d
    iget-object v2, p0, Lcom/yandex/metrica/impl/a$a;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/yandex/metrica/impl/a$a;->a:Ljava/lang/String;

    if-eqz v2, :cond_2a

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_2d

    :cond_2a
    if-nez p1, :cond_2d

    :cond_2c
    return v0

    :cond_2d
    :goto_2d
    return v1
.end method

.method public hashCode()I
    .registers 6

    .line 64
    iget-object v0, p0, Lcom/yandex/metrica/impl/a$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    iget-wide v1, p0, Lcom/yandex/metrica/impl/a$a;->b:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method
