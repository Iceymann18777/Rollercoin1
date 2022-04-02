.class public Lcom/tappx/a/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/n$a;
    }
.end annotation


# static fields
.field public static final a:J

.field public static final b:I

.field public static final c:J

.field public static final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/tappx/a/n;->a:J

    const-string v0, "#AA000000"

    .line 7
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/tappx/a/n;->b:I

    .line 16
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/tappx/a/n;->c:J

    .line 24
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    long-to-int v0, v3

    sput v0, Lcom/tappx/a/n;->d:I

    .line 25
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    const-string v0, "L6AMiu9M3Gzzgb1DcC9zrDR9fhKqyqubFhk/uJfuERU"

    .line 1
    invoke-static {v0}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    const-string v0, "1YOY5Rt0XsvTgffyYERBs4OZnMp++K/Jm0S7KmQTqYs"

    .line 1
    invoke-static {v0}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    const-string v0, "1YOY5Rt0XsvTgffyYERBs/9Q8P9JjeY56Zh7AIAZRFWxPR/PBPbq9Y+kQ6cgMGag"

    .line 1
    invoke-static {v0}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    const-string v0, "J2+md0qp82FLvsRk4PIP3g"

    .line 1
    invoke-static {v0}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .registers 1

    const-string v0, "syvFyRTjmbidu/AgD0s++g"

    .line 1
    invoke-static {v0}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
