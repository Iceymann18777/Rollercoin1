.class La/a/b/b/a$a;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/b/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:La/a/b/b/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    new-instance v0, La/a/b/b/a$a;

    invoke-direct {v0}, La/a/b/b/a$a;-><init>()V

    sput-object v0, La/a/b/b/a$a;->a:La/a/b/b/a$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()La/a/b/b/a$a;
    .registers 1

    .line 39
    sget-object v0, La/a/b/b/a$a;->a:La/a/b/b/a$a;

    return-object v0
.end method
