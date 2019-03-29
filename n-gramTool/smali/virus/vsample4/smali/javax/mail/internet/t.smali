.class public Ljavax/mail/internet/t;
.super Ljava/lang/Object;
.source "Illegal Recipient type"


# static fields
.field public static final ALL:I = -0x1

.field static final ALL_ASCII:I = 0x1

.field static final MOSTLY_ASCII:I = 0x2

.field static final MOSTLY_NONASCII:I = 0x3

.field private static decodeStrict:Z

.field private static defaultJavaCharset:Ljava/lang/String;

.field private static defaultMIMECharset:Ljava/lang/String;

.field private static encodeEolStrict:Z

.field private static foldEncodedWords:Z

.field private static foldText:Z

.field private static java2mime:Ljava/util/Hashtable;

.field private static mime2java:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    sput-boolean v2, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z

    sput-boolean v1, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z

    sput-boolean v1, Ljavax/mail/internet/MimeUtility;->foldEncodedWords:Z

    sput-boolean v2, Ljavax/mail/internet/MimeUtility;->foldText:Z

    :try_start_0
    const-string v3, "mail.mime.decodetext.strict"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_0
    sput-boolean v3, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z

    const-string v3, "mail.mime.encodeeol.strict"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v2

    :goto_1
    sput-boolean v3, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z

    const-string v3, "mail.mime.foldencodedwords"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v2

    :goto_2
    sput-boolean v3, Ljavax/mail/internet/MimeUtility;->foldEncodedWords:Z

    const-string v3, "mail.mime.foldtext"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_3
    sput-boolean v1, Ljavax/mail/internet/MimeUtility;->foldText:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_4
    new-instance v1, Ljava/util/Hashtable;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    :try_start_1
    const-class v1, Ljavax/mail/internet/MimeUtility;

    const-string v2, "/META-INF/javamail.charset.map"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_2
    new-instance v2, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v2, v3}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    move-object v0, v2

    check-cast v0, Lcom/sun/mail/util/LineInputStream;

    move-object v1, v0

    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    invoke-static {v1, v3}, Ljavax/mail/internet/MimeUtility;->loadMappings(Lcom/sun/mail/util/LineInputStream;Ljava/util/Hashtable;)V

    move-object v0, v2

    check-cast v0, Lcom/sun/mail/util/LineInputStream;

    move-object v1, v0

    sget-object v3, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    invoke-static {v1, v3}, Ljavax/mail/internet/MimeUtility;->loadMappings(Lcom/sun/mail/util/LineInputStream;Ljava/util/Hashtable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_0
    :goto_5
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "8859_1"

    const-string v3, "ISO-8859-1"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "iso8859_1"

    const-string v3, "ISO-8859-1"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "iso8859-1"

    const-string v3, "ISO-8859-1"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "8859_2"

    const-string v3, "ISO-8859-2"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "iso8859_2"

    const-string v3, "ISO-8859-2"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "iso8859-2"

    const-string v3, "ISO-8859-2"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "8859_3"

    const-string v3, "ISO-8859-3"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "iso8859_3"

    const-string v3, "ISO-8859-3"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "iso8859-3"

    const-string v3, "ISO-8859-3"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "8859_4"

    const-string v3, "ISO-8859-4"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "iso8859_4"

    const-string v3, "ISO-8859-4"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "iso8859-4"

    const-string v3, "ISO-8859-4"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "8859_5"

    const-string v3, "ISO-8859-5"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "iso8859_5"

    const-string v3, "ISO-8859-5"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "iso8859-5"

    const-string v3, "ISO-8859-5"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "8859_6"

    const-string v3, "ISO-8859-6"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "iso8859_6"

    const-string v3, "ISO-8859-6"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "iso8859-6"

    const-string v3, "ISO-8859-6"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "8859_7"

    const-string v3, "ISO-8859-7"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "iso8859_7"

    const-string v3, "ISO-8859-7"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "iso8859-7"

    const-string v3, "ISO-8859-7"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "8859_8"

    const-string v3, "ISO-8859-8"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "iso8859_8"

    const-string v3, "ISO-8859-8"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "iso8859-8"

    const-string v3, "ISO-8859-8"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "8859_9"

    const-string v3, "ISO-8859-9"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "iso8859_9"

    const-string v3, "ISO-8859-9"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "iso8859-9"

    const-string v3, "ISO-8859-9"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "sjis"

    const-string v3, "Shift_JIS"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "jis"

    const-string v3, "ISO-2022-JP"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "iso2022jp"

    const-string v3, "ISO-2022-JP"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "euc_jp"

    const-string v3, "euc-jp"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "koi8_r"

    const-string v3, "koi8-r"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "euc_cn"

    const-string v3, "euc-cn"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "euc_tw"

    const-string v3, "euc-tw"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v2, "euc_kr"

    const-string v3, "euc-kr"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v2, "iso-2022-cn"

    const-string v3, "ISO2022CN"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v2, "iso-2022-kr"

    const-string v3, "ISO2022KR"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v2, "utf-8"

    const-string v3, "UTF8"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v2, "utf8"

    const-string v3, "UTF8"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v2, "ja_jp.iso2022-7"

    const-string v3, "ISO2022JP"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v2, "ja_jp.eucjp"

    const-string v3, "EUCJIS"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v2, "euc-kr"

    const-string v3, "KSC5601"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v2, "euckr"

    const-string v3, "KSC5601"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v2, "us-ascii"

    const-string v3, "ISO-8859-1"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v2, "x-us-ascii"

    const-string v3, "ISO-8859-1"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    :cond_3
    move v3, v2

    goto/16 :goto_0

    :cond_4
    move v3, v1

    goto/16 :goto_1

    :cond_5
    move v3, v1

    goto/16 :goto_2

    :cond_6
    move v1, v2

    goto/16 :goto_3

    :catchall_0
    move-exception v1

    move-object v2, v3

    :goto_6
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_7
    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v1

    goto/16 :goto_5

    :catch_1
    move-exception v2

    goto :goto_7

    :catch_2
    move-exception v1

    goto/16 :goto_5

    :catchall_1
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto/16 :goto_4
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAscii(Ljava/io/InputStream;IZ)I
    .locals 17

    :array_0
    :goto_0
    :cond_0
    :cond_1
    :cond_2
    #Field index out of bounds: 42961
    #sget-char p164, field@42961
    nop

    shl-int/2addr v2, v9

    and-long p181, p198, p118

    #disallowed odex opcode
    #sget-volatile p34, Lcom/sun/mail/imap/IMAPFolder$10;->val$dd:Ljava/util/Date;
    nop

    move-exception p51

    #invalid payload reference
    #fill-array-data p56, :array_0
    nop

    sub-double p176, p233, p61

    neg-double v10, v7

    const-wide/16 p41, 0x4422

    #disallowed odex opcode
    #iget-wide-quick v6, v1, field@0x79aa
    nop

    #Field index out of bounds: 3383
    #iput-boolean v7, v15, field@3383
    nop

    #invalid payload reference
    #packed-switch v10, :pswitch_data_0
    nop

    move-wide/from16 p231, p48769

    shl-long p89, p141, p205

    int-to-char v9, v10

    #Field index out of bounds: 59223
    #sget p59, field@59223
    nop

    sub-long p139, p135, p224

    move-wide/16 p1940, p34738

    if-gtz p169, :cond_3

    not-long v7, v15

    #Field index out of bounds: 14066
    #disallowed odex opcode
    #sput-wide-volatile p40, field@14066
    nop

    shl-int p145, p193, p154

    #Method index out of bounds: 32916
    #invoke-direct/range {p38978 .. p38989}, method@32916
    nop

    or-long p182, v12, p183

    long-to-float v15, v10

    mul-long/2addr v3, v5

    #Field index out of bounds: 29871
    #sput-short p197, field@29871
    nop

    if-gez p111, :cond_0

    aget-boolean p59, p237, p24

    #Field index out of bounds: 35186
    #sput-boolean p124, field@35186
    nop

    :try_start_0
    int-to-double v2, v10

    goto/32 :goto_0

    neg-int v9, v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #Field index out of bounds: 19010
    #iget-object v4, v9, field@19010
    nop

    add-int/lit8 p168, p187, 0x1b

    if-gez v1, :cond_5

    aget p1, p14, p71

    #Type index out of bounds: 50512
    #check-cast p46, type@50512
    nop

    aget-wide p161, p20, p108

    const-wide/high16 p101, 0x2258000000000000L    # 3.075199634201243E-143

    #unknown opcode: 0x43
    nop

    sub-int p219, p106, p129

    #Field index out of bounds: 58631
    #iget-char v10, v1, field@58631
    nop

    ushr-int/lit8 p176, p236, 0x1c

    #Field index out of bounds: 20972
    #sput-byte v15, field@20972
    nop

    #Field index out of bounds: 44572
    #iget-char v3, v8, field@44572
    nop

    if-nez p220, :cond_6

    #unknown opcode: 0xff
    nop

    aput-short p138, p126, p92

    if-lez p201, :cond_1

    #Method index out of bounds: 58693
    #invoke-super {}, method@58693
    nop

    :try_start_1
    double-to-int v0, v3

    or-int/lit16 v10, v8, -0x3b18

    shr-long/2addr v12, v4

    xor-int/lit8 v6, p192, -0x71

    add-float p183, p8, p226

    move-object/from16 p110, p32568

    add-float/2addr v4, v6

    return-wide p164

    int-to-long v2, v6

    #Field index out of bounds: 56308
    #disallowed odex opcode
    #throw-verification-error no-such-method, field@56308
    nop

    if-le v0, v9, :cond_2

    rem-long/2addr v2, v4

    if-le v0, v13, :cond_7

    #Field index out of bounds: 4887
    #iget v0, v4, field@4887
    nop

    div-int/2addr v15, v11

    move/16 p17209, p50221

    #Field index out of bounds: 41966
    #disallowed odex opcode
    #sput-volatile v4, field@41966
    nop

    cmpg-double p202, p225, v0

    return-object p90

    add-long/2addr v3, v9

    move-result-object p203

    #Field index out of bounds: 58449
    #disallowed odex opcode
    #iget-object-volatile v12, v8, field@58449
    nop
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #Field index out of bounds: 35584
    #disallowed odex opcode
    #sget-wide-volatile p221, field@35584
    nop

    #Field index out of bounds: 34539
    #disallowed odex opcode
    #sput-object-volatile p196, field@34539
    nop

    double-to-int v14, v1

    neg-int v4, v0

    #Field index out of bounds: 19662
    #sget-short p187, field@19662
    nop

    throw p90

    rsub-int/lit8 p107, p171, 0x21

    move-wide/16 p9152, p32009

    div-int/2addr v13, v12

    xor-int/lit16 v4, v8, 0x1dd6

    if-ne v15, v11, :cond_4

    add-double/2addr v14, v15

    #Field index out of bounds: 46436
    #iput-char v7, v4, field@46436
    nop

    #Type index out of bounds: 44292
    #instance-of v12, v14, type@44292
    nop

    const/16 p58, 0x3e2d

    :catch_0
    invoke-static {}, Ljavax/mail/internet/l;->skipIfChar(C)Z

    throw p36

    const/16 p1, -0x1d9e

    goto :goto_1

    #unknown opcode: 0xec
    nop

    div-int p173, p170, p57

    float-to-int v9, v12

    #Method index out of bounds: 7984
    #invoke-super {v0, v5}, method@7984
    nop

    #Field index out of bounds: 25948
    #iget v14, v15, field@25948
    nop

    const-wide/high16 p164, -0x46ee000000000000L    # -8.666684749742561E-34

    not-int v9, v10

    #Method index out of bounds: 62437
    #invoke-direct/range {p37171 .. p37374}, method@62437
    nop

    const-wide/high16 p95, -0x1b54000000000000L    # -8.864321588796067E176

    return-void

    #unknown opcode: 0x7a
    nop

    mul-double p1, p129, p212

    add-double p168, p209, p77

    :catch_1
    double-to-long v8, v8

    float-to-double v7, v3

    #unknown opcode: 0x43
    nop

    #Field index out of bounds: 43274
    #sget-short p150, field@43274
    nop

    #Field index out of bounds: 56533
    #iput-byte v4, v3, field@56533
    nop

    #Field index out of bounds: 39680
    #iget-object v8, v11, field@39680
    nop

    #Type index out of bounds: 58065
    #filled-new-array {}, type@58065
    nop

    div-long/2addr v6, v2

    not-int v4, v12

    #disallowed odex opcode
    #iput-object-quick v15, v0, field@0xff77
    nop

    #unknown opcode: 0x73
    nop

    #unknown opcode: 0x41
    nop

    #Field index out of bounds: 8511
    #disallowed odex opcode
    #sget-volatile p166, field@8511
    nop

    #Field index out of bounds: 41887
    #sget-char p114, field@41887
    nop

    sub-float p89, p12, p76
    :goto_1
    :cond_3
    :cond_4
    :cond_5
    :cond_6
    :cond_7
    :pswitch_data_0
.end method

.method static checkAscii(Ljava/lang/String;)I
    .locals 5

    #disallowed odex opcode
    #iget-volatile p10, p8, Ljavax/mail/internet/m;->setDefaultTextCharset:Z
    nop

    #Field index out of bounds: 55776
    #iget-char p5, v0, field@55776
    nop

    cmpg-float p62, p44, p100

    or-long p24, p91, p134

    cmp-long p219, p118, p25

    #unknown opcode: 0x73
    nop

    #Method index out of bounds: 55646
    #disallowed odex opcode
    #throw-verification-error no-such-class, method@55646
    nop

    shl-int/2addr v1, v2

    long-to-int v0, p0

    ushr-long p99, p13, p237

    rsub-int p4, p10, -0x6ddc

    #Field index out of bounds: 26906
    #iput-wide p2, p5, field@26906
    nop

    #Field index out of bounds: 32939
    #sput-object p67, field@32939
    nop

    aget-short p215, p164, p225

    aput-object p80, p122, p170

    #Field index out of bounds: 9961
    #disallowed odex opcode
    #sput-volatile p160, field@9961
    nop

    int-to-long p1, v3

    and-int/lit8 p175, p30, 0x17

    if-eq p9, p3, :cond_1

    if-eq v3, v3, :cond_0

    #disallowed odex opcode
    #return-void-barrier
    nop
    :cond_0
    :cond_1
.end method

.method static checkAscii([B)I
    .locals 4

    add-float p24, v1, p188

    aget-object p80, p154, p246

    or-int p26, p28, p188

    #Field index out of bounds: 52408
    #iput-object p10, v1, field@52408
    nop

    and-int p58, p246, p31

    if-eq p2, p10, :cond_0

    #Type index out of bounds: 51091
    #const-class p193, type@51091
    nop

    #unknown opcode: 0x41
    nop

    #Field index out of bounds: 16828
    #iget-char p10, p5, field@16828
    nop

    const v3, -0x55d5dbcc

    ushr-int/2addr p8, p5

    #Field index out of bounds: 12418
    #sget-char p107, field@12418
    nop

    shr-long p221, p100, p149

    add-int/2addr v2, p10

    mul-float/2addr p3, p10

    cmpl-float p18, p141, p108

    #Method index out of bounds: 62674
    #invoke-direct {}, method@62674
    nop

    and-int/lit16 p8, p1, -0x3e11
    :cond_0
.end method

