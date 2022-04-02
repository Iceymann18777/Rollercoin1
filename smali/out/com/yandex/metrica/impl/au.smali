.class Lcom/yandex/metrica/impl/au;
.super Lcom/yandex/metrica/impl/at;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/at;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    return-void
.end method


# virtual methods
.method protected a(JLcom/yandex/metrica/impl/ob/bl;)Landroid/database/Cursor;
    .registers 6

    .line 70
    iget-object p1, p0, Lcom/yandex/metrica/impl/au;->o:Lcom/yandex/metrica/impl/ob/bn;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/au;->s()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p3}, Lcom/yandex/metrica/impl/ob/bn;->b(JLcom/yandex/metrica/impl/ob/bl;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method protected a(JLcom/yandex/metrica/c$a$d$b;)Lcom/yandex/metrica/impl/at$b;
    .registers 4

    .line 80
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/au;->t()J

    move-result-wide p1

    invoke-super {p0, p1, p2, p3}, Lcom/yandex/metrica/impl/at;->a(JLcom/yandex/metrica/c$a$d$b;)Lcom/yandex/metrica/impl/at$b;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .registers 4

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/yandex/metrica/impl/at;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/au;->s()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(J)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method protected s()J
    .registers 3

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method protected t()J
    .registers 3

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method protected x()Lcom/yandex/metrica/impl/at$c;
    .registers 8

    const/4 v0, 0x0

    .line 45
    :try_start_1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/au;->z()Landroid/database/Cursor;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_51
    .catchall {:try_start_1 .. :try_end_5} :catchall_48

    if-eqz v1, :cond_13

    .line 47
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_38

    .line 48
    :cond_13
    iget-object v2, p0, Lcom/yandex/metrica/impl/au;->o:Lcom/yandex/metrica/impl/ob/bn;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/au;->s()J

    move-result-wide v3

    sget-object v5, Lcom/yandex/metrica/impl/ob/bl;->b:Lcom/yandex/metrica/impl/ob/bl;

    invoke-virtual {v2, v3, v4, v5}, Lcom/yandex/metrica/impl/ob/bn;->b(JLcom/yandex/metrica/impl/ob/bl;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 49
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_38

    .line 50
    iget-object v2, p0, Lcom/yandex/metrica/impl/au;->o:Lcom/yandex/metrica/impl/ob/bn;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/au;->s()J

    move-result-wide v3

    sget-object v5, Lcom/yandex/metrica/impl/ob/bl;->b:Lcom/yandex/metrica/impl/ob/bl;

    invoke-virtual {v2, v3, v4, v5}, Lcom/yandex/metrica/impl/ob/bn;->a(JLcom/yandex/metrica/impl/ob/bl;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_38} :catch_44
    .catchall {:try_start_7 .. :try_end_38} :catchall_3f

    .line 56
    :cond_38
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    .line 57
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    goto :goto_58

    :catchall_3f
    move-exception v2

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4a

    :catch_44
    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_52

    :catchall_48
    move-exception v2

    move-object v1, v0

    .line 56
    :goto_4a
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    .line 57
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    throw v2

    :catch_51
    move-object v1, v0

    .line 56
    :goto_52
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    .line 57
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    .line 60
    :goto_58
    invoke-super {p0}, Lcom/yandex/metrica/impl/at;->x()Lcom/yandex/metrica/impl/at$c;

    move-result-object v0

    return-object v0
.end method

.method protected z()Landroid/database/Cursor;
    .registers 5

    .line 65
    iget-object v0, p0, Lcom/yandex/metrica/impl/au;->o:Lcom/yandex/metrica/impl/ob/bn;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/au;->s()J

    move-result-wide v1

    iget-object v3, p0, Lcom/yandex/metrica/impl/au;->b:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/bn;->a(JLjava/util/Map;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
