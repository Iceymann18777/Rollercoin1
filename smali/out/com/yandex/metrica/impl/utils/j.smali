.class public final Lcom/yandex/metrica/impl/utils/j;
.super Lcom/yandex/metrica/impl/utils/c;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final b:Lcom/yandex/metrica/impl/utils/j;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 28
    fill-array-data v0, :array_14

    sput-object v0, Lcom/yandex/metrica/impl/utils/j;->a:[I

    .line 32
    new-instance v0, Lcom/yandex/metrica/impl/utils/j;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/utils/j;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/utils/j;->b:Lcom/yandex/metrica/impl/utils/j;

    const-string v0, ""

    .line 34
    sput-object v0, Lcom/yandex/metrica/impl/utils/j;->c:Ljava/lang/String;

    return-void

    :array_14
    .array-data 4
        0x3
        0x6
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/utils/c;-><init>(Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "[%s] : "

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/yandex/metrica/impl/utils/j;->c:Ljava/lang/String;

    return-void
.end method

.method public static f()Lcom/yandex/metrica/impl/utils/j;
    .registers 1

    .line 41
    sget-object v0, Lcom/yandex/metrica/impl/utils/j;->b:Lcom/yandex/metrica/impl/utils/j;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/c$a$d$a;Ljava/lang/String;)V
    .registers 9

    .line 1083
    sget-object v0, Lcom/yandex/metrica/impl/utils/j;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_12

    aget v4, v0, v3

    .line 1084
    iget v5, p1, Lcom/yandex/metrica/c$a$d$a;->d:I

    if-ne v5, v4, :cond_f

    const/4 v2, 0x1

    goto :goto_12

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_12
    :goto_12
    if-eqz v2, :cond_6b

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    iget p2, p1, Lcom/yandex/metrica/c$a$d$a;->d:I

    const/4 v1, 0x3

    if-ne p2, v1, :cond_35

    iget-object p2, p1, Lcom/yandex/metrica/c$a$d$a;->e:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_35

    .line 1091
    sget-object p1, Lcom/yandex/metrica/impl/p$a;->o:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/p$a;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_61

    .line 1092
    :cond_35
    iget p2, p1, Lcom/yandex/metrica/c$a$d$a;->d:I

    const/4 v1, 0x4

    if-ne p2, v1, :cond_5f

    .line 1093
    new-instance p2, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/yandex/metrica/c$a$d$a;->e:Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1094
    iget-object v1, p1, Lcom/yandex/metrica/c$a$d$a;->f:[B

    if-eqz v1, :cond_5a

    .line 1095
    new-instance v1, Ljava/lang/String;

    iget-object p1, p1, Lcom/yandex/metrica/c$a$d$a;->f:[B

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 1096
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5a

    const-string p1, " with value "

    .line 1097
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    :cond_5a
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_61

    .line 1103
    :cond_5f
    iget-object p1, p1, Lcom/yandex/metrica/c$a$d$a;->e:Ljava/lang/String;

    .line 78
    :goto_61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/utils/j;->a(Ljava/lang/String;)V

    :cond_6b
    return-void
.end method

.method public a(Lcom/yandex/metrica/c$a$d;Ljava/lang/String;)V
    .registers 6

    .line 108
    iget-object p1, p1, Lcom/yandex/metrica/c$a$d;->d:[Lcom/yandex/metrica/c$a$d$a;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_e

    aget-object v2, p1, v1

    .line 109
    invoke-virtual {p0, v2, p2}, Lcom/yandex/metrica/impl/utils/j;->a(Lcom/yandex/metrica/c$a$d$a;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/h;Ljava/lang/String;)V
    .registers 4

    .line 64
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->c()I

    move-result v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/p;->b(I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, ": "

    .line 66
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->c()I

    move-result p2

    invoke-static {p2}, Lcom/yandex/metrica/impl/p;->c(I)Z

    move-result p2

    if-eqz p2, :cond_3b

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3b

    const-string p2, " with value "

    .line 69
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/utils/j;->a(Ljava/lang/String;)V

    :cond_42
    return-void
.end method

.method c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 55
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "AppMetrica"

    return-object v0
.end method

.method e()Ljava/lang/String;
    .registers 3

    .line 60
    sget-object v0, Lcom/yandex/metrica/impl/utils/j;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/bi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
