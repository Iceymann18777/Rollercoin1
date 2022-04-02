.class public Lcom/tappx/a/o4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/lang/String; = "<script\\s+[^>]*\\bsrc\\s*=\\s*([\\\"\\\'])mraid\\.js\\1[^>]*>\\s*</script>\\n*"

.field static b:Ljava/lang/String; = "<script src=\"mraid.js\"></script>"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 3

    .line 1
    sget-object v0, Lcom/tappx/a/o4;->a:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method
