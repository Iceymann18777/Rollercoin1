.class public final Lcom/yandex/metrica/c$a$d;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/c$a$d$a;,
        Lcom/yandex/metrica/c$a$d$b;,
        Lcom/yandex/metrica/c$a$d$c;
    }
.end annotation


# static fields
.field private static volatile e:[Lcom/yandex/metrica/c$a$d;


# instance fields
.field public b:J

.field public c:Lcom/yandex/metrica/c$a$d$b;

.field public d:[Lcom/yandex/metrica/c$a$d$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1734
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 1735
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a$d;->e()Lcom/yandex/metrica/c$a$d;

    return-void
.end method

.method public static d()[Lcom/yandex/metrica/c$a$d;
    .registers 2

    .line 1714
    sget-object v0, Lcom/yandex/metrica/c$a$d;->e:[Lcom/yandex/metrica/c$a$d;

    if-nez v0, :cond_15

    .line 1715
    sget-object v0, Lcom/yandex/metrica/impl/ob/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1717
    :try_start_7
    sget-object v1, Lcom/yandex/metrica/c$a$d;->e:[Lcom/yandex/metrica/c$a$d;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/yandex/metrica/c$a$d;

    .line 1718
    sput-object v1, Lcom/yandex/metrica/c$a$d;->e:[Lcom/yandex/metrica/c$a$d;

    .line 1720
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 1722
    :cond_15
    :goto_15
    sget-object v0, Lcom/yandex/metrica/c$a$d;->e:[Lcom/yandex/metrica/c$a$d;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1749
    iget-wide v0, p0, Lcom/yandex/metrica/c$a$d;->b:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(IJ)V

    .line 1750
    iget-object v0, p0, Lcom/yandex/metrica/c$a$d;->c:Lcom/yandex/metrica/c$a$d$b;

    if-eqz v0, :cond_e

    const/4 v1, 0x2

    .line 1751
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    .line 1753
    :cond_e
    iget-object v0, p0, Lcom/yandex/metrica/c$a$d;->d:[Lcom/yandex/metrica/c$a$d$a;

    if-eqz v0, :cond_26

    array-length v0, v0

    if-lez v0, :cond_26

    const/4 v0, 0x0

    .line 1754
    :goto_16
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d;->d:[Lcom/yandex/metrica/c$a$d$a;

    array-length v2, v1

    if-ge v0, v2, :cond_26

    .line 1755
    aget-object v1, v1, v0

    if-eqz v1, :cond_23

    const/4 v2, 0x3

    .line 1757
    invoke-virtual {p1, v2, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 1761
    :cond_26
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method protected c()I
    .registers 5

    .line 1766
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 1767
    iget-wide v1, p0, Lcom/yandex/metrica/c$a$d;->b:J

    const/4 v3, 0x1

    .line 1768
    invoke-static {v3, v1, v2}, Lcom/yandex/metrica/impl/ob/b;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1769
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d;->c:Lcom/yandex/metrica/c$a$d$b;

    if-eqz v1, :cond_16

    const/4 v2, 0x2

    .line 1771
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1773
    :cond_16
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d;->d:[Lcom/yandex/metrica/c$a$d$a;

    if-eqz v1, :cond_30

    array-length v1, v1

    if-lez v1, :cond_30

    const/4 v1, 0x0

    .line 1774
    :goto_1e
    iget-object v2, p0, Lcom/yandex/metrica/c$a$d;->d:[Lcom/yandex/metrica/c$a$d$a;

    array-length v3, v2

    if-ge v1, v3, :cond_30

    .line 1775
    aget-object v2, v2, v1

    if-eqz v2, :cond_2d

    const/4 v3, 0x3

    .line 1778
    invoke-static {v3, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_30
    return v0
.end method

.method public e()Lcom/yandex/metrica/c$a$d;
    .registers 3

    const-wide/16 v0, 0x0

    .line 1739
    iput-wide v0, p0, Lcom/yandex/metrica/c$a$d;->b:J

    const/4 v0, 0x0

    .line 1740
    iput-object v0, p0, Lcom/yandex/metrica/c$a$d;->c:Lcom/yandex/metrica/c$a$d$b;

    .line 1741
    invoke-static {}, Lcom/yandex/metrica/c$a$d$a;->d()[Lcom/yandex/metrica/c$a$d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/c$a$d;->d:[Lcom/yandex/metrica/c$a$d$a;

    const/4 v0, -0x1

    .line 1742
    iput v0, p0, Lcom/yandex/metrica/c$a$d;->a:I

    return-object p0
.end method
