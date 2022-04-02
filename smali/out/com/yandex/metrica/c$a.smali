.class public final Lcom/yandex/metrica/c$a;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/c$a$e;,
        Lcom/yandex/metrica/c$a$c;,
        Lcom/yandex/metrica/c$a$a;,
        Lcom/yandex/metrica/c$a$d;,
        Lcom/yandex/metrica/c$a$b;,
        Lcom/yandex/metrica/c$a$f;
    }
.end annotation


# instance fields
.field public b:Lcom/yandex/metrica/c$a$f;

.field public c:[Lcom/yandex/metrica/c$a$d;

.field public d:[Lcom/yandex/metrica/c$a$a;

.field public e:[Lcom/yandex/metrica/c$a$c;

.field public f:[Ljava/lang/String;

.field public g:[Lcom/yandex/metrica/c$a$e;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2556
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 2557
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a;->d()Lcom/yandex/metrica/c$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2574
    iget-object v0, p0, Lcom/yandex/metrica/c$a;->b:Lcom/yandex/metrica/c$a$f;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 2575
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    .line 2577
    :cond_8
    iget-object v0, p0, Lcom/yandex/metrica/c$a;->c:[Lcom/yandex/metrica/c$a$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    array-length v0, v0

    if-lez v0, :cond_21

    const/4 v0, 0x0

    .line 2578
    :goto_11
    iget-object v2, p0, Lcom/yandex/metrica/c$a;->c:[Lcom/yandex/metrica/c$a$d;

    array-length v3, v2

    if-ge v0, v3, :cond_21

    .line 2579
    aget-object v2, v2, v0

    if-eqz v2, :cond_1e

    const/4 v3, 0x3

    .line 2581
    invoke-virtual {p1, v3, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 2585
    :cond_21
    iget-object v0, p0, Lcom/yandex/metrica/c$a;->d:[Lcom/yandex/metrica/c$a$a;

    if-eqz v0, :cond_39

    array-length v0, v0

    if-lez v0, :cond_39

    const/4 v0, 0x0

    .line 2586
    :goto_29
    iget-object v2, p0, Lcom/yandex/metrica/c$a;->d:[Lcom/yandex/metrica/c$a$a;

    array-length v3, v2

    if-ge v0, v3, :cond_39

    .line 2587
    aget-object v2, v2, v0

    if-eqz v2, :cond_36

    const/4 v3, 0x7

    .line 2589
    invoke-virtual {p1, v3, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 2593
    :cond_39
    iget-object v0, p0, Lcom/yandex/metrica/c$a;->e:[Lcom/yandex/metrica/c$a$c;

    if-eqz v0, :cond_52

    array-length v0, v0

    if-lez v0, :cond_52

    const/4 v0, 0x0

    .line 2594
    :goto_41
    iget-object v2, p0, Lcom/yandex/metrica/c$a;->e:[Lcom/yandex/metrica/c$a$c;

    array-length v3, v2

    if-ge v0, v3, :cond_52

    .line 2595
    aget-object v2, v2, v0

    if-eqz v2, :cond_4f

    const/16 v3, 0x8

    .line 2597
    invoke-virtual {p1, v3, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 2601
    :cond_52
    iget-object v0, p0, Lcom/yandex/metrica/c$a;->f:[Ljava/lang/String;

    if-eqz v0, :cond_6b

    array-length v0, v0

    if-lez v0, :cond_6b

    const/4 v0, 0x0

    .line 2602
    :goto_5a
    iget-object v2, p0, Lcom/yandex/metrica/c$a;->f:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_6b

    .line 2603
    aget-object v2, v2, v0

    if-eqz v2, :cond_68

    const/16 v3, 0x9

    .line 2605
    invoke-virtual {p1, v3, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    :cond_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 2609
    :cond_6b
    iget-object v0, p0, Lcom/yandex/metrica/c$a;->g:[Lcom/yandex/metrica/c$a$e;

    if-eqz v0, :cond_83

    array-length v0, v0

    if-lez v0, :cond_83

    .line 2610
    :goto_72
    iget-object v0, p0, Lcom/yandex/metrica/c$a;->g:[Lcom/yandex/metrica/c$a$e;

    array-length v2, v0

    if-ge v1, v2, :cond_83

    .line 2611
    aget-object v0, v0, v1

    if-eqz v0, :cond_80

    const/16 v2, 0xa

    .line 2613
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    :cond_80
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    .line 2617
    :cond_83
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method protected c()I
    .registers 9

    .line 2622
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 2623
    iget-object v1, p0, Lcom/yandex/metrica/c$a;->b:Lcom/yandex/metrica/c$a$f;

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    .line 2625
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2627
    :cond_e
    iget-object v1, p0, Lcom/yandex/metrica/c$a;->c:[Lcom/yandex/metrica/c$a$d;

    const/4 v3, 0x0

    if-eqz v1, :cond_29

    array-length v1, v1

    if-lez v1, :cond_29

    const/4 v1, 0x0

    .line 2628
    :goto_17
    iget-object v4, p0, Lcom/yandex/metrica/c$a;->c:[Lcom/yandex/metrica/c$a$d;

    array-length v5, v4

    if-ge v1, v5, :cond_29

    .line 2629
    aget-object v4, v4, v1

    if-eqz v4, :cond_26

    const/4 v5, 0x3

    .line 2632
    invoke-static {v5, v4}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 2636
    :cond_29
    iget-object v1, p0, Lcom/yandex/metrica/c$a;->d:[Lcom/yandex/metrica/c$a$a;

    if-eqz v1, :cond_43

    array-length v1, v1

    if-lez v1, :cond_43

    const/4 v1, 0x0

    .line 2637
    :goto_31
    iget-object v4, p0, Lcom/yandex/metrica/c$a;->d:[Lcom/yandex/metrica/c$a$a;

    array-length v5, v4

    if-ge v1, v5, :cond_43

    .line 2638
    aget-object v4, v4, v1

    if-eqz v4, :cond_40

    const/4 v5, 0x7

    .line 2641
    invoke-static {v5, v4}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 2645
    :cond_43
    iget-object v1, p0, Lcom/yandex/metrica/c$a;->e:[Lcom/yandex/metrica/c$a$c;

    if-eqz v1, :cond_5e

    array-length v1, v1

    if-lez v1, :cond_5e

    const/4 v1, 0x0

    .line 2646
    :goto_4b
    iget-object v4, p0, Lcom/yandex/metrica/c$a;->e:[Lcom/yandex/metrica/c$a$c;

    array-length v5, v4

    if-ge v1, v5, :cond_5e

    .line 2647
    aget-object v4, v4, v1

    if-eqz v4, :cond_5b

    const/16 v5, 0x8

    .line 2650
    invoke-static {v5, v4}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 2654
    :cond_5e
    iget-object v1, p0, Lcom/yandex/metrica/c$a;->f:[Ljava/lang/String;

    if-eqz v1, :cond_7f

    array-length v1, v1

    if-lez v1, :cond_7f

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2657
    :goto_68
    iget-object v6, p0, Lcom/yandex/metrica/c$a;->f:[Ljava/lang/String;

    array-length v7, v6

    if-ge v1, v7, :cond_7b

    .line 2658
    aget-object v6, v6, v1

    if-eqz v6, :cond_78

    add-int/lit8 v5, v5, 0x1

    .line 2662
    invoke-static {v6}, Lcom/yandex/metrica/impl/ob/b;->b(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    :cond_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    :cond_7b
    add-int/2addr v0, v4

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v0, v5

    .line 2668
    :cond_7f
    iget-object v1, p0, Lcom/yandex/metrica/c$a;->g:[Lcom/yandex/metrica/c$a$e;

    if-eqz v1, :cond_99

    array-length v1, v1

    if-lez v1, :cond_99

    .line 2669
    :goto_86
    iget-object v1, p0, Lcom/yandex/metrica/c$a;->g:[Lcom/yandex/metrica/c$a$e;

    array-length v2, v1

    if-ge v3, v2, :cond_99

    .line 2670
    aget-object v1, v1, v3

    if-eqz v1, :cond_96

    const/16 v2, 0xa

    .line 2673
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_96
    add-int/lit8 v3, v3, 0x1

    goto :goto_86

    :cond_99
    return v0
.end method

.method public d()Lcom/yandex/metrica/c$a;
    .registers 2

    const/4 v0, 0x0

    .line 2561
    iput-object v0, p0, Lcom/yandex/metrica/c$a;->b:Lcom/yandex/metrica/c$a$f;

    .line 2562
    invoke-static {}, Lcom/yandex/metrica/c$a$d;->d()[Lcom/yandex/metrica/c$a$d;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/c$a;->c:[Lcom/yandex/metrica/c$a$d;

    .line 2563
    invoke-static {}, Lcom/yandex/metrica/c$a$a;->d()[Lcom/yandex/metrica/c$a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/c$a;->d:[Lcom/yandex/metrica/c$a$a;

    .line 2564
    invoke-static {}, Lcom/yandex/metrica/c$a$c;->d()[Lcom/yandex/metrica/c$a$c;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/c$a;->e:[Lcom/yandex/metrica/c$a$c;

    .line 2565
    sget-object v0, Lcom/yandex/metrica/impl/ob/f;->a:[Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/c$a;->f:[Ljava/lang/String;

    .line 2566
    invoke-static {}, Lcom/yandex/metrica/c$a$e;->d()[Lcom/yandex/metrica/c$a$e;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/c$a;->g:[Lcom/yandex/metrica/c$a$e;

    const/4 v0, -0x1

    .line 2567
    iput v0, p0, Lcom/yandex/metrica/c$a;->a:I

    return-object p0
.end method
