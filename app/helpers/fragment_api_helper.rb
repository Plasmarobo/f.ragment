module FragmentApiHelper

  COMMON_FRAGMENT_TYPES = [
    "Data access",
    "Data read",
    "Data clear",
    "Data validate",
    "Conditional",
    "Log/Print",
    "Thread Start",
    "Collision",
    "Loop",
    "Scope",
    "End",
    "Push",
    "Pop",
    "Insert",
    "Remove",
    "Index"
  ]

  PLAYER_FRAGMENT_TYPES = [
    "Data change",
    "Thread Sync",
    "Comment"
  ]

  SYSTEM_FRAGMENT_TYPES = [
    "Chance",
    "Security Start",
    "Memory Page"
  ]

  ACCESS_TYPE = [
    "Reg",
    "Mem"
  ]

  def blocks_to_js(blocks)
    javascript = ""
    while(!blocks.empty?)
      current_block = blocks.unshift
      fragment_refs = current_block.get_ordered_fragments
      javascript += self.fragment_refs_to_js(fragment_refs)
    end
    return javascript
  end

  def fragment_refs_to_js(fragment_refs)
    string = ""
    current_fragment_ref = fragment_refs.unshift

    if(!fragment_refs.empty?)  
      #Check for threading/parallel fragments
      if fragment_refs.front.line == current_fragment_ref.line #Threaded!
        string += "fragment_thread( '#{current_fragment_ref.fragment.function}'"
    
        while(fragment_refs.front.line == current_fragment_ref.line)
          current_fragment_ref = fragment_refs.unshift
          string += ",\n '#{current_fragment_ref.fragment.function}'"
        end
        string += ");\n" 
      else #Not threaded
        string += "#{current_fragment_ref.fragment.function};\n"
      end
    end
    return string += fragment_refs_to_js(fragment_refs)
  end

  def gen_player_fragment(workspace)
    #Select a player fragment at random
    fragment_domain = PLAYER_FRAGMENT_TYPES + COMMON_FRAGMENT_TYPES
    selection = Random.rand() % fragment_domain.size
    self.generate_fragment(fragment_domain[selection], workspace)
  end

  def gen_system_fragment(workspace)
    #Select a system fragment at random
    fragment_domain = SYSTEM_FRAGMENT_TYPES + COMMON_FRAGMENT_TYPES
    selection = Random.rand() % fragment_domain.size
    self.generate_fragment(fragment_domain[selection], workspace)
  end

  def generate_fragment(selector, workspace)
    
    case selection
    when "Data access"
      
      dest = self.get_random_location(workspace)
      source = self.get_random_location(workspace)
      
    when "Data read"
    when "Data clear"
    when "Data validate"
    when "Conditional"
    when "Log/Print"
    when "Thread Start"
    when "Collision"
    when "Loop"
    when "Scope"
    when "End"
    when "Push"
    when "Pop"
    when "Insert"
    when "Remove"
    when "Index"
    when "Data change"
    when "Thread Sync"
    when "Comment" 
    when "Chance"
    when "Security Start"
    when "Memory Page"
    else
    end
  ]

  end

  def get_random_location(workspace)
    #Generate new variable?
    
    type = ACCESS_TYPE[Random.rand() % 2]


  end

  
end
