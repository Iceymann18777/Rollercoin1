.class Lcom/yandex/metrica/impl/ob/eq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/ey;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/fd;

.field private b:Lcom/yandex/metrica/impl/ob/ey;

.field private c:Lcom/yandex/metrica/impl/ob/fh;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/fe;Lcom/yandex/metrica/impl/ob/fd;)V
    .registers 11

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/eq;->a:Lcom/yandex/metrica/impl/ob/fd;

    .line 16
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/fd;->e()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1052
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/fg;->a(Lcom/yandex/metrica/impl/ob/fd;)Z

    move-result v0

    .line 1053
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/fd;->f()Z

    move-result v1

    .line 1055
    new-instance v2, Lcom/yandex/metrica/impl/ob/et;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/et;-><init>()V

    iput-object v2, p0, Lcom/yandex/metrica/impl/ob/eq;->b:Lcom/yandex/metrica/impl/ob/ey;

    if-eqz v1, :cond_83

    if-eqz v0, :cond_23

    .line 1059
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/ob/eq;->a(Lcom/yandex/metrica/impl/ob/fe;Lcom/yandex/metrica/impl/ob/fd;)Lcom/yandex/metrica/impl/ob/fs;

    move-result-object v0

    goto :goto_27

    .line 1061
    :cond_23
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fa;->c(Lcom/yandex/metrica/impl/ob/fe;)Lcom/yandex/metrica/impl/ob/fs;

    move-result-object v0

    .line 1063
    :goto_27
    new-instance v1, Lcom/yandex/metrica/impl/ob/fh;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/eq;->b:Lcom/yandex/metrica/impl/ob/ey;

    invoke-direct {v1, p1, v2, v0, p2}, Lcom/yandex/metrica/impl/ob/fh;-><init>(Lcom/yandex/metrica/impl/ob/fe;Lcom/yandex/metrica/impl/ob/ey;Lcom/yandex/metrica/impl/ob/fs;Lcom/yandex/metrica/impl/ob/fd;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/eq;->c:Lcom/yandex/metrica/impl/ob/fh;

    goto :goto_83

    .line 1068
    :cond_31
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/fg;->a(Lcom/yandex/metrica/impl/ob/fd;)Z

    move-result v0

    const-wide/32 v1, 0x5265c00

    .line 1100
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/fd;->a()J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-eqz v7, :cond_44

    const/4 v1, 0x1

    goto :goto_45

    :cond_44
    const/4 v1, 0x0

    :goto_45
    if-nez v1, :cond_4b

    if-eqz v0, :cond_4a

    goto :goto_4b

    :cond_4a
    const/4 v5, 0x0

    .line 1070
    :cond_4b
    :goto_4b
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/fd;->f()Z

    move-result v1

    if-eqz v0, :cond_65

    .line 1074
    :try_start_51
    new-instance v0, Lcom/yandex/metrica/impl/ob/em;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/fd;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/yandex/metrica/impl/ob/em;-><init>(Lcom/yandex/metrica/impl/ob/fe;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/eq;->b:Lcom/yandex/metrica/impl/ob/ey;
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5c} :catch_5d

    goto :goto_6b

    .line 1076
    :catch_5d
    new-instance v0, Lcom/yandex/metrica/impl/ob/et;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/et;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/eq;->b:Lcom/yandex/metrica/impl/ob/ey;

    goto :goto_6b

    .line 1079
    :cond_65
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fa;->b(Lcom/yandex/metrica/impl/ob/fe;)Lcom/yandex/metrica/impl/ob/ey;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/eq;->b:Lcom/yandex/metrica/impl/ob/ey;

    :goto_6b
    if-eqz v1, :cond_83

    if-eqz v5, :cond_7d

    .line 1084
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/ob/eq;->a(Lcom/yandex/metrica/impl/ob/fe;Lcom/yandex/metrica/impl/ob/fd;)Lcom/yandex/metrica/impl/ob/fs;

    move-result-object v0

    .line 1085
    new-instance v1, Lcom/yandex/metrica/impl/ob/fh;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/eq;->b:Lcom/yandex/metrica/impl/ob/ey;

    invoke-direct {v1, p1, v2, v0, p2}, Lcom/yandex/metrica/impl/ob/fh;-><init>(Lcom/yandex/metrica/impl/ob/fe;Lcom/yandex/metrica/impl/ob/ey;Lcom/yandex/metrica/impl/ob/fs;Lcom/yandex/metrica/impl/ob/fd;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/eq;->c:Lcom/yandex/metrica/impl/ob/fh;

    goto :goto_83

    .line 1087
    :cond_7d
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fa;->a(Lcom/yandex/metrica/impl/ob/fe;)Lcom/yandex/metrica/impl/ob/fh;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/eq;->c:Lcom/yandex/metrica/impl/ob/fh;

    .line 21
    :cond_83
    :goto_83
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/eq;->c:Lcom/yandex/metrica/impl/ob/fh;

    if-eqz p1, :cond_8e

    .line 22
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/fd;->d()Lcom/yandex/metrica/impl/ob/fj;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/fh;->a(Lcom/yandex/metrica/impl/ob/fj;)V

    :cond_8e
    return-void
.end method

.method private static a(Lcom/yandex/metrica/impl/ob/fe;Lcom/yandex/metrica/impl/ob/fd;)Lcom/yandex/metrica/impl/ob/fs;
    .registers 3

    .line 94
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fg;->a(Lcom/yandex/metrica/impl/ob/fd;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 97
    :try_start_6
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fd;->c()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/fe;->a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/fs;

    move-result-object p0

    goto :goto_15

    .line 99
    :cond_f
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fe;->d()Lcom/yandex/metrica/impl/ob/fs;

    move-result-object p0
    :try_end_13
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_13} :catch_14
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_13} :catch_14

    goto :goto_15

    :catch_14
    const/4 p0, 0x0

    :goto_15
    return-object p0
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/fb;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eq;->b:Lcom/yandex/metrica/impl/ob/ey;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/ey;->a()Lcom/yandex/metrica/impl/ob/fb;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/fb;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eq;->b:Lcom/yandex/metrica/impl/ob/ey;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/ey;->b()Lcom/yandex/metrica/impl/ob/fb;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/yandex/metrica/impl/ob/fb;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eq;->b:Lcom/yandex/metrica/impl/ob/ey;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/ey;->c()Lcom/yandex/metrica/impl/ob/fb;

    move-result-object v0

    return-object v0
.end method

.method d()Lcom/yandex/metrica/impl/ob/fh;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eq;->c:Lcom/yandex/metrica/impl/ob/fh;

    return-object v0
.end method

.method e()V
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eq;->a:Lcom/yandex/metrica/impl/ob/fd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/fd;->f()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 32
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eq;->c:Lcom/yandex/metrica/impl/ob/fh;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/fh;->c()V

    :cond_d
    return-void
.end method
