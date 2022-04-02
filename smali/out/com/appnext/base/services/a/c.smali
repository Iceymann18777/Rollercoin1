.class public abstract Lcom/appnext/base/services/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final eH:Ljava/lang/String; = "more_data"

.field private static final eI:J = 0x3e8L

.field private static final eJ:J = 0xea60L

.field private static final eK:J = 0x36ee80L

.field private static final eL:J = 0x5265c00L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static D(Ljava/lang/String;)J
    .registers 7

    const-wide/16 v0, -0x1

    .line 69
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_46

    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 70
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 71
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 72
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    .line 73
    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 74
    invoke-virtual {v2, v3, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    .line 75
    invoke-virtual {v2, p0, v4}, Ljava/util/Calendar;->set(II)V

    .line 76
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_42

    const/4 p0, 0x5

    const/4 v3, 0x1

    .line 77
    invoke-virtual {v2, p0, v3}, Ljava/util/Calendar;->add(II)V

    .line 79
    :cond_42
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0
    :try_end_46
    .catchall {:try_start_2 .. :try_end_46} :catchall_46

    :catchall_46
    :cond_46
    return-wide v0
.end method

.method private static a(JJ)J
    .registers 8

    const-wide/32 p0, -0x1b7740

    .line 93
    :try_start_3
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    .line 107
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x1b7740

    add-long/2addr v0, v2

    long-to-int p3, v0

    .line 108
    invoke-virtual {p2, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_18

    int-to-long p0, p0

    sub-long/2addr v2, p0

    return-wide v2

    :catchall_18
    return-wide p0
.end method


# virtual methods
.method protected abstract a(Lcom/appnext/base/a/b/c;JJ)V
.end method

.method protected abstract a(Lcom/appnext/base/a/b/c;JLandroid/os/Bundle;)V
.end method

.method public final a(Lcom/appnext/base/a/b/c;ZLandroid/os/Bundle;)V
    .registers 14

    if-eqz p1, :cond_c8

    .line 30
    :try_start_2
    invoke-virtual {p1}, Lcom/appnext/base/a/b/c;->ak()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_c8

    invoke-virtual {p1}, Lcom/appnext/base/a/b/c;->ak()Ljava/lang/String;

    move-result-object p3

    const-string v0, "off"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1a

    goto/16 :goto_c8

    .line 34
    :cond_1a
    invoke-virtual {p1}, Lcom/appnext/base/a/b/c;->al()Ljava/lang/String;

    move-result-object p3

    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x0

    if-eqz p3, :cond_54

    invoke-virtual {p1}, Lcom/appnext/base/a/b/c;->am()Ljava/lang/String;

    move-result-object p3

    const-string v4, "time"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_54

    if-nez p2, :cond_3a

    .line 37
    invoke-virtual {p1}, Lcom/appnext/base/a/b/c;->al()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/appnext/base/services/a/c;->D(Ljava/lang/String;)J

    move-result-wide v2

    :cond_3a
    cmp-long p2, v2, v0

    if-eqz p2, :cond_c8

    const-wide/32 p2, -0x1b7740

    const-wide/32 v0, 0x1b7740

    .line 41
    invoke-static {p2, p3, v0, v1}, Lcom/appnext/base/services/a/c;->a(JJ)J

    move-result-wide p2

    add-long v6, v2, p2

    const-wide/32 v8, 0x5265c00

    move-object v4, p0

    move-object v5, p1

    .line 42
    invoke-virtual/range {v4 .. v9}, Lcom/appnext/base/services/a/c;->b(Lcom/appnext/base/a/b/c;JJ)V

    goto/16 :goto_c8

    .line 44
    :cond_54
    invoke-virtual {p1}, Lcom/appnext/base/a/b/c;->ao()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_ae

    invoke-virtual {p1}, Lcom/appnext/base/a/b/c;->ao()Ljava/lang/String;

    move-result-object p3

    const-string v4, "interval"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_ae

    .line 45
    invoke-virtual {p1}, Lcom/appnext/base/a/b/c;->al()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/appnext/base/a/b/c;->am()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3, v4}, Lcom/appnext/base/b/j;->g(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    int-to-long v8, p3

    cmp-long p3, v8, v0

    if-nez p3, :cond_78

    return-void

    .line 49
    :cond_78
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/appnext/base/a/b/c;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_lastupdate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, v2, v3}, Lcom/appnext/base/b/i;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_a4

    if-eqz p2, :cond_9c

    goto :goto_a4

    :cond_9c
    add-long v6, v8, v0

    move-object v4, p0

    move-object v5, p1

    .line 56
    invoke-virtual/range {v4 .. v9}, Lcom/appnext/base/services/a/c;->a(Lcom/appnext/base/a/b/c;JJ)V

    goto :goto_c8

    .line 51
    :cond_a4
    :goto_a4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/appnext/base/services/a/c;->a(Lcom/appnext/base/a/b/c;JJ)V

    return-void

    .line 58
    :cond_ae
    invoke-virtual {p1}, Lcom/appnext/base/a/b/c;->ao()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_c8

    invoke-virtual {p1}, Lcom/appnext/base/a/b/c;->ao()Ljava/lang/String;

    move-result-object p2

    const-string p3, "once"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/appnext/base/services/a/c;->a(Lcom/appnext/base/a/b/c;JLandroid/os/Bundle;)V
    :try_end_c8
    .catchall {:try_start_2 .. :try_end_c8} :catchall_c8

    :catchall_c8
    :cond_c8
    :goto_c8
    return-void
.end method

.method protected abstract b(Lcom/appnext/base/a/b/c;)V
.end method

.method protected abstract b(Lcom/appnext/base/a/b/c;JJ)V
.end method

.method public final c(Lcom/appnext/base/a/b/c;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 121
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/appnext/base/operations/b;->aI()Lcom/appnext/base/operations/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appnext/base/a/b/c;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/appnext/base/operations/b;->b(Ljava/lang/String;Lcom/appnext/base/a/b/c;Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/appnext/base/services/a/c;->b(Lcom/appnext/base/a/b/c;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_12

    :catchall_12
    return-void
.end method

.method protected abstract g(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/b/c;",
            ">;)V"
        }
    .end annotation
.end method

.method public final h(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/b/c;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 134
    :cond_3
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appnext/base/a/b/c;

    .line 135
    invoke-static {}, Lcom/appnext/base/operations/b;->aI()Lcom/appnext/base/operations/b;

    move-result-object v2

    invoke-virtual {v1}, Lcom/appnext/base/a/b/c;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, v4}, Lcom/appnext/base/operations/b;->b(Ljava/lang/String;Lcom/appnext/base/a/b/c;Landroid/os/Bundle;Ljava/lang/Object;)V

    goto :goto_7

    .line 137
    :cond_20
    invoke-virtual {p0, p1}, Lcom/appnext/base/services/a/c;->g(Ljava/util/List;)V
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_23

    :catchall_23
    return-void
.end method
