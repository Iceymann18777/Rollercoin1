.class public final Lcom/yandex/metrica/c$a$d$a$b;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c$a$d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/c$a$d$a$b$b;,
        Lcom/yandex/metrica/c$a$d$a$b$a;
    }
.end annotation


# instance fields
.field public b:[Lcom/yandex/metrica/c$a$d$a$b$a;

.field public c:[Lcom/yandex/metrica/c$a$d$c;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Lcom/yandex/metrica/c$a$d$a$b$b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1193
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 1194
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a$d$a$b;->d()Lcom/yandex/metrica/c$a$d$a$b;

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

    .line 1210
    iget-object v0, p0, Lcom/yandex/metrica/c$a$d$a$b;->b:[Lcom/yandex/metrica/c$a$d$a$b$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    array-length v0, v0

    if-lez v0, :cond_19

    const/4 v0, 0x0

    .line 1211
    :goto_9
    iget-object v2, p0, Lcom/yandex/metrica/c$a$d$a$b;->b:[Lcom/yandex/metrica/c$a$d$a$b$a;

    array-length v3, v2

    if-ge v0, v3, :cond_19

    .line 1212
    aget-object v2, v2, v0

    if-eqz v2, :cond_16

    const/4 v3, 0x1

    .line 1214
    invoke-virtual {p1, v3, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1218
    :cond_19
    iget-object v0, p0, Lcom/yandex/metrica/c$a$d$a$b;->c:[Lcom/yandex/metrica/c$a$d$c;

    const/4 v2, 0x2

    if-eqz v0, :cond_30

    array-length v0, v0

    if-lez v0, :cond_30

    .line 1219
    :goto_21
    iget-object v0, p0, Lcom/yandex/metrica/c$a$d$a$b;->c:[Lcom/yandex/metrica/c$a$d$c;

    array-length v3, v0

    if-ge v1, v3, :cond_30

    .line 1220
    aget-object v0, v0, v1

    if-eqz v0, :cond_2d

    .line 1222
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 1226
    :cond_30
    iget v0, p0, Lcom/yandex/metrica/c$a$d$a$b;->d:I

    if-eq v0, v2, :cond_38

    const/4 v1, 0x3

    .line 1227
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 1229
    :cond_38
    iget-object v0, p0, Lcom/yandex/metrica/c$a$d$a$b;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    const/4 v0, 0x4

    .line 1230
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d$a$b;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 1232
    :cond_48
    iget-object v0, p0, Lcom/yandex/metrica/c$a$d$a$b;->f:Lcom/yandex/metrica/c$a$d$a$b$b;

    if-eqz v0, :cond_50

    const/4 v1, 0x5

    .line 1233
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    .line 1235
    :cond_50
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method protected c()I
    .registers 6

    .line 1240
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 1241
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d$a$b;->b:[Lcom/yandex/metrica/c$a$d$a$b$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    array-length v1, v1

    if-lez v1, :cond_1f

    const/4 v1, 0x0

    .line 1242
    :goto_d
    iget-object v3, p0, Lcom/yandex/metrica/c$a$d$a$b;->b:[Lcom/yandex/metrica/c$a$d$a$b$a;

    array-length v4, v3

    if-ge v1, v4, :cond_1f

    .line 1243
    aget-object v3, v3, v1

    if-eqz v3, :cond_1c

    const/4 v4, 0x1

    .line 1246
    invoke-static {v4, v3}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1250
    :cond_1f
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d$a$b;->c:[Lcom/yandex/metrica/c$a$d$c;

    const/4 v3, 0x2

    if-eqz v1, :cond_38

    array-length v1, v1

    if-lez v1, :cond_38

    .line 1251
    :goto_27
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d$a$b;->c:[Lcom/yandex/metrica/c$a$d$c;

    array-length v4, v1

    if-ge v2, v4, :cond_38

    .line 1252
    aget-object v1, v1, v2

    if-eqz v1, :cond_35

    .line 1255
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 1259
    :cond_38
    iget v1, p0, Lcom/yandex/metrica/c$a$d$a$b;->d:I

    if-eq v1, v3, :cond_42

    const/4 v2, 0x3

    .line 1261
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1263
    :cond_42
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d$a$b;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    const/4 v1, 0x4

    .line 1264
    iget-object v2, p0, Lcom/yandex/metrica/c$a$d$a$b;->e:Ljava/lang/String;

    .line 1265
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1267
    :cond_54
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d$a$b;->f:Lcom/yandex/metrica/c$a$d$a$b$b;

    if-eqz v1, :cond_5e

    const/4 v2, 0x5

    .line 1269
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5e
    return v0
.end method

.method public d()Lcom/yandex/metrica/c$a$d$a$b;
    .registers 2

    .line 1198
    invoke-static {}, Lcom/yandex/metrica/c$a$d$a$b$a;->d()[Lcom/yandex/metrica/c$a$d$a$b$a;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/c$a$d$a$b;->b:[Lcom/yandex/metrica/c$a$d$a$b$a;

    .line 1199
    invoke-static {}, Lcom/yandex/metrica/c$a$d$c;->d()[Lcom/yandex/metrica/c$a$d$c;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/c$a$d$a$b;->c:[Lcom/yandex/metrica/c$a$d$c;

    const/4 v0, 0x2

    .line 1200
    iput v0, p0, Lcom/yandex/metrica/c$a$d$a$b;->d:I

    const-string v0, ""

    .line 1201
    iput-object v0, p0, Lcom/yandex/metrica/c$a$d$a$b;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1202
    iput-object v0, p0, Lcom/yandex/metrica/c$a$d$a$b;->f:Lcom/yandex/metrica/c$a$d$a$b$b;

    const/4 v0, -0x1

    .line 1203
    iput v0, p0, Lcom/yandex/metrica/c$a$d$a$b;->a:I

    return-object p0
.end method
