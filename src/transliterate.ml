let load_mapping filename : (string * string) list =
  let lines = In_channel.read_lines filename in
  List.filter_map (fun line ->
    match String.split_on_char '\t' line with
    | [b; m] -> Some (b, m)
    | _ -> None
  ) lines

let transliterate_line mapping line =
  let rec loop i acc =
    if i >= String.length line then String.concat "" (List.rev acc)
    else
      let ch = String.sub line i 1 in
      let mapped = match List.assoc_opt ch mapping with
        | Some m -> m
        | None -> ch
      in
      loop (i + 1) (mapped :: acc)
  in loop 0 []

let () =
  let mapping = load_mapping "data/bengali_to_meitei.tsv" in
  let input_lines = In_channel.read_lines "test/sample_bengali.txt" in
  let output_lines = List.map (transliterate_line mapping) input_lines in
  Out_channel.write_lines "output.txt" output_lines
