.class public final Lcom/yandex/metrica/c$a$b;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public b:D

.field public c:D

.field public d:J

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 174
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 175
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a$b;->d()Lcom/yandex/metrica/c$a$b;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/b;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    iget-wide v0, p0, Lcom/yandex/metrica/c$a$b;->b:D

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ID)V

    .line 195
    iget-wide v0, p0, Lcom/yandex/metrica/c$a$b;->c:D

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ID)V

    .line 196
    iget-wide v0, p0, Lcom/yandex/metrica/c$a$b;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    const/4 v2, 0x3

    .line 197
    invoke-virtual {p1, v2, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(IJ)V

    .line 199
    :cond_18
    iget v0, p0, Lcom/yandex/metrica/c$a$b;->e:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 200
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 202
    :cond_20
    iget v0, p0, Lcom/yandex/metrica/c$a$b;->f:I

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 203
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 205
    :cond_28
    iget v0, p0, Lcom/yandex/metrica/c$a$b;->g:I

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 206
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 208
    :cond_30
    iget v0, p0, Lcom/yandex/metrica/c$a$b;->h:I

    if-eqz v0, :cond_38

    const/4 v1, 0x7

    .line 209
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 211
    :cond_38
    iget v0, p0, Lcom/yandex/metrica/c$a$b;->i:I

    if-eqz v0, :cond_41

    const/16 v1, 0x8

    .line 212
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 214
    :cond_41
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method protected c()I
    .registers 7

    .line 219
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    const/4 v1, 0x1

    .line 221
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    .line 223
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 224
    iget-wide v1, p0, Lcom/yandex/metrica/c$a$b;->d:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1e

    const/4 v3, 0x3

    .line 226
    invoke-static {v3, v1, v2}, Lcom/yandex/metrica/impl/ob/b;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 228
    :cond_1e
    iget v1, p0, Lcom/yandex/metrica/c$a$b;->e:I

    if-eqz v1, :cond_28

    const/4 v2, 0x4

    .line 230
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 232
    :cond_28
    iget v1, p0, Lcom/yandex/metrica/c$a$b;->f:I

    if-eqz v1, :cond_32

    const/4 v2, 0x5

    .line 234
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 236
    :cond_32
    iget v1, p0, Lcom/yandex/metrica/c$a$b;->g:I

    if-eqz v1, :cond_3c

    const/4 v2, 0x6

    .line 238
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 240
    :cond_3c
    iget v1, p0, Lcom/yandex/metrica/c$a$b;->h:I

    if-eqz v1, :cond_46

    const/4 v2, 0x7

    .line 242
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 244
    :cond_46
    iget v1, p0, Lcom/yandex/metrica/c$a$b;->i:I

    if-eqz v1, :cond_51

    const/16 v2, 0x8

    .line 246
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_51
    return v0
.end method

.method public d()Lcom/yandex/metrica/c$a$b;
    .registers 3

    const-wide/16 v0, 0x0

    .line 179
    iput-wide v0, p0, Lcom/yandex/metrica/c$a$b;->b:D

    .line 180
    iput-wide v0, p0, Lcom/yandex/metrica/c$a$b;->c:D

    const-wide/16 v0, 0x0

    .line 181
    iput-wide v0, p0, Lcom/yandex/metrica/c$a$b;->d:J

    const/4 v0, 0x0

    .line 182
    iput v0, p0, Lcom/yandex/metrica/c$a$b;->e:I

    .line 183
    iput v0, p0, Lcom/yandex/metrica/c$a$b;->f:I

    .line 184
    iput v0, p0, Lcom/yandex/metrica/c$a$b;->g:I

    .line 185
    iput v0, p0, Lcom/yandex/metrica/c$a$b;->h:I

    .line 186
    iput v0, p0, Lcom/yandex/metrica/c$a$b;->i:I

    const/4 v0, -0x1

    .line 187
    iput v0, p0, Lcom/yandex/metrica/c$a$b;->a:I

    return-object p0
.end method
