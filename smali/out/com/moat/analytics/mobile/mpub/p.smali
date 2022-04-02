.class Lcom/moat/analytics/mobile/mpub/p;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/view/View;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    const-string p0, "null"

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Moat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/w;->a()Lcom/moat/analytics/mobile/mpub/w;

    move-result-object v0

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/mpub/w;->b:Z

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_1b

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p3, p2, v1

    const-string p3, "message = %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_30

    :cond_1b
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    aput-object p3, v2, v0

    const-string p2, "id = %s, message = %s"

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_30
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_33
    return-void
.end method

.method static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1, p2, p3, p4}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p4}, Lcom/moat/analytics/mobile/mpub/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/w;->a()Lcom/moat/analytics/mobile/mpub/w;

    move-result-object v0

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/mpub/w;->b:Z

    if-eqz v0, :cond_26

    invoke-static {p0}, Lcom/moat/analytics/mobile/mpub/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "id = %s, message = %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_26
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/w;->a()Lcom/moat/analytics/mobile/mpub/w;

    move-result-object v0

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/mpub/w;->b:Z

    if-nez v0, :cond_30

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/mpub/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/mpub/k;

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/mpub/k;->a:Z

    if-eqz v0, :cond_30

    const/4 v0, 0x2

    const-string v1, "[ERROR] "

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x6

    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MoatAnalytics"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_30
    return-void
.end method

.method static b(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/w;->a()Lcom/moat/analytics/mobile/mpub/w;

    move-result-object v0

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/mpub/w;->c:Z

    if-eqz v0, :cond_2b

    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez p2, :cond_15

    const-string p2, "null"

    goto :goto_1d

    :cond_15
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_1d
    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const-string p2, "id = %s, message = %s"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-void
.end method
