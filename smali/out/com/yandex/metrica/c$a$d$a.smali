.class public final Lcom/yandex/metrica/c$a$d$a;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c$a$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/c$a$d$a$a;,
        Lcom/yandex/metrica/c$a$d$a$b;
    }
.end annotation


# static fields
.field private static volatile m:[Lcom/yandex/metrica/c$a$d$a;


# instance fields
.field public b:J

.field public c:J

.field public d:I

.field public e:Ljava/lang/String;

.field public f:[B

.field public g:Lcom/yandex/metrica/c$a$b;

.field public h:Lcom/yandex/metrica/c$a$d$a$b;

.field public i:Ljava/lang/String;

.field public j:Lcom/yandex/metrica/c$a$d$a$a;

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1524
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 1525
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a$d$a;->e()Lcom/yandex/metrica/c$a$d$a;

    return-void
.end method

.method public static d()[Lcom/yandex/metrica/c$a$d$a;
    .registers 2

    .line 1480
    sget-object v0, Lcom/yandex/metrica/c$a$d$a;->m:[Lcom/yandex/metrica/c$a$d$a;

    if-nez v0, :cond_15

    .line 1481
    sget-object v0, Lcom/yandex/metrica/impl/ob/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1483
    :try_start_7
    sget-object v1, Lcom/yandex/metrica/c$a$d$a;->m:[Lcom/yandex/metrica/c$a$d$a;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/yandex/metrica/c$a$d$a;

    .line 1484
    sput-object v1, Lcom/yandex/metrica/c$a$d$a;->m:[Lcom/yandex/metrica/c$a$d$a;

    .line 1486
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 1488
    :cond_15
    :goto_15
    sget-object v0, Lcom/yandex/metrica/c$a$d$a;->m:[Lcom/yandex/metrica/c$a$d$a;

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

    .line 1547
    iget-wide v0, p0, Lcom/yandex/metrica/c$a$d$a;->b:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(IJ)V

    .line 1548
    iget-wide v0, p0, Lcom/yandex/metrica/c$a$d$a;->c:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(IJ)V

    .line 1549
    iget v0, p0, Lcom/yandex/metrica/c$a$d$a;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 1550
    iget-object v0, p0, Lcom/yandex/metrica/c$a$d$a;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x4

    .line 1551
    iget-object v2, p0, Lcom/yandex/metrica/c$a$d$a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 1553
    :cond_22
    iget-object v0, p0, Lcom/yandex/metrica/c$a$d$a;->f:[B

    sget-object v2, Lcom/yandex/metrica/impl/ob/f;->b:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_32

    const/4 v0, 0x5

    .line 1554
    iget-object v2, p0, Lcom/yandex/metrica/c$a$d$a;->f:[B

    invoke-virtual {p1, v0, v2}, Lcom/yandex/metrica/impl/ob/b;->a(I[B)V

    .line 1556
    :cond_32
    iget-object v0, p0, Lcom/yandex/metrica/c$a$d$a;->g:Lcom/yandex/metrica/c$a$b;

    if-eqz v0, :cond_3a

    const/4 v2, 0x6

    .line 1557
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    .line 1559
    :cond_3a
    iget-object v0, p0, Lcom/yandex/metrica/c$a$d$a;->h:Lcom/yandex/metrica/c$a$d$a$b;

    if-eqz v0, :cond_42

    const/4 v2, 0x7

    .line 1560
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    .line 1562
    :cond_42
    iget-object v0, p0, Lcom/yandex/metrica/c$a$d$a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    const/16 v0, 0x8

    .line 1563
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d$a;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 1565
    :cond_51
    iget-object v0, p0, Lcom/yandex/metrica/c$a$d$a;->j:Lcom/yandex/metrica/c$a$d$a$a;

    if-eqz v0, :cond_5a

    const/16 v1, 0x9

    .line 1566
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    .line 1568
    :cond_5a
    iget v0, p0, Lcom/yandex/metrica/c$a$d$a;->k:I

    if-eqz v0, :cond_63

    const/16 v1, 0xa

    .line 1569
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 1571
    :cond_63
    iget v0, p0, Lcom/yandex/metrica/c$a$d$a;->l:I

    if-eqz v0, :cond_6c

    const/16 v1, 0xc

    .line 1572
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 1574
    :cond_6c
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method protected c()I
    .registers 5

    .line 1579
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 1580
    iget-wide v1, p0, Lcom/yandex/metrica/c$a$d$a;->b:J

    const/4 v3, 0x1

    .line 1581
    invoke-static {v3, v1, v2}, Lcom/yandex/metrica/impl/ob/b;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1582
    iget-wide v1, p0, Lcom/yandex/metrica/c$a$d$a;->c:J

    const/4 v3, 0x2

    .line 1583
    invoke-static {v3, v1, v2}, Lcom/yandex/metrica/impl/ob/b;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1584
    iget v1, p0, Lcom/yandex/metrica/c$a$d$a;->d:I

    const/4 v2, 0x3

    .line 1585
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1586
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d$a;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const/4 v1, 0x4

    .line 1587
    iget-object v3, p0, Lcom/yandex/metrica/c$a$d$a;->e:Ljava/lang/String;

    .line 1588
    invoke-static {v1, v3}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1590
    :cond_2e
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d$a;->f:[B

    sget-object v3, Lcom/yandex/metrica/impl/ob/f;->b:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_40

    const/4 v1, 0x5

    .line 1591
    iget-object v3, p0, Lcom/yandex/metrica/c$a$d$a;->f:[B

    .line 1592
    invoke-static {v1, v3}, Lcom/yandex/metrica/impl/ob/b;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1594
    :cond_40
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d$a;->g:Lcom/yandex/metrica/c$a$b;

    if-eqz v1, :cond_4a

    const/4 v3, 0x6

    .line 1596
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1598
    :cond_4a
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d$a;->h:Lcom/yandex/metrica/c$a$d$a$b;

    if-eqz v1, :cond_54

    const/4 v3, 0x7

    .line 1600
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1602
    :cond_54
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d$a;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    const/16 v1, 0x8

    .line 1603
    iget-object v2, p0, Lcom/yandex/metrica/c$a$d$a;->i:Ljava/lang/String;

    .line 1604
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1606
    :cond_65
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d$a;->j:Lcom/yandex/metrica/c$a$d$a$a;

    if-eqz v1, :cond_70

    const/16 v2, 0x9

    .line 1608
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1610
    :cond_70
    iget v1, p0, Lcom/yandex/metrica/c$a$d$a;->k:I

    if-eqz v1, :cond_7b

    const/16 v2, 0xa

    .line 1612
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1614
    :cond_7b
    iget v1, p0, Lcom/yandex/metrica/c$a$d$a;->l:I

    if-eqz v1, :cond_86

    const/16 v2, 0xc

    .line 1616
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_86
    return v0
.end method

.method public e()Lcom/yandex/metrica/c$a$d$a;
    .registers 4

    const-wide/16 v0, 0x0

    .line 1529
    iput-wide v0, p0, Lcom/yandex/metrica/c$a$d$a;->b:J

    .line 1530
    iput-wide v0, p0, Lcom/yandex/metrica/c$a$d$a;->c:J

    const/4 v0, 0x0

    .line 1531
    iput v0, p0, Lcom/yandex/metrica/c$a$d$a;->d:I

    const-string v1, ""

    .line 1532
    iput-object v1, p0, Lcom/yandex/metrica/c$a$d$a;->e:Ljava/lang/String;

    .line 1533
    sget-object v2, Lcom/yandex/metrica/impl/ob/f;->b:[B

    iput-object v2, p0, Lcom/yandex/metrica/c$a$d$a;->f:[B

    const/4 v2, 0x0

    .line 1534
    iput-object v2, p0, Lcom/yandex/metrica/c$a$d$a;->g:Lcom/yandex/metrica/c$a$b;

    .line 1535
    iput-object v2, p0, Lcom/yandex/metrica/c$a$d$a;->h:Lcom/yandex/metrica/c$a$d$a$b;

    .line 1536
    iput-object v1, p0, Lcom/yandex/metrica/c$a$d$a;->i:Ljava/lang/String;

    .line 1537
    iput-object v2, p0, Lcom/yandex/metrica/c$a$d$a;->j:Lcom/yandex/metrica/c$a$d$a$a;

    .line 1538
    iput v0, p0, Lcom/yandex/metrica/c$a$d$a;->k:I

    .line 1539
    iput v0, p0, Lcom/yandex/metrica/c$a$d$a;->l:I

    const/4 v0, -0x1

    .line 1540
    iput v0, p0, Lcom/yandex/metrica/c$a$d$a;->a:I

    return-object p0
.end method
