.class public final La/a/e/b;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/e/b$a;
    }
.end annotation


# static fields
.field public static final a:La/a/e/b$a;


# instance fields
.field private final nativePattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, La/a/e/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/a/e/b$a;-><init>(La/a/b/b/e;)V

    sput-object v0, La/a/e/b;->a:La/a/e/b$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "pattern"

    invoke-static {p1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string v0, "Pattern.compile(pattern)"

    invoke-static {p1, v0}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, La/a/e/b;-><init>(Ljava/util/regex/Pattern;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Pattern;)V
    .registers 3

    const-string v0, "nativePattern"

    invoke-static {p1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/e/b;->nativePattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)Z
    .registers 3

    const-string v0, "input"

    invoke-static {p1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, La/a/e/b;->nativePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 194
    iget-object v0, p0, La/a/e/b;->nativePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nativePattern.toString()"

    invoke-static {v0, v1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
